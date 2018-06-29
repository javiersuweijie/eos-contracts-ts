import * as EOS from "./eoslib"
import { DataStream } from "./datastream";
import { allocate, HEADER_SIZE } from "../node_modules/assemblyscript/std/assembly/internal/string";

export const CHARACTER_MAP : string = ".12345abcdefghijklmnopqrstuvwxyz";

export function toUTF8Array(str:string) : u8[] {
    var utf8 : u8[] = [];
    for (var i=0; i < str.length; i++) {
        var charcode = str.charCodeAt(i);
        if (charcode < 0x80) utf8.push(<u8>charcode);
        else if (charcode < 0x800) {
            utf8.push(<u8>(0xc0 | (charcode >> 6))); 
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
        else if (charcode < 0xd800 || charcode >= 0xe000) {
            utf8.push(<u8>(0xe0 | (charcode >> 12))); 
            utf8.push(<u8>(0x80 | ((charcode>>6) & 0x3f)));
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
        // surrogate pair
        else {
            i++;
            // UTF-16 encodes 0x10000-0x10FFFF by
            // subtracting 0x10000 and splitting the
            // 20 bits of 0x0-0xFFFFF into two halves
            charcode = 0x10000 + (((charcode & 0x3ff)<<10)
                      | (str.charCodeAt(i) & 0x3ff))
            utf8.push(<u8>(0xf0 | (charcode >>18))); 
            utf8.push(<u8>(0x80 | ((charcode>>12) & 0x3f)));
            utf8.push(<u8>(0x80 | ((charcode>>6) & 0x3f)));
            utf8.push(<u8>(0x80 | (charcode & 0x3f)));
        }
    }
    utf8.push(<u8>0x00);
    return utf8;
}

export function string2cstr(str: string) : u32 {
  let cstr = toUTF8Array(str);
  var ptr : u32 = load<u32>(<usize>cstr);
  return <usize>ptr + sizeof<u64>();
}

export function printstr(str: string) : void {
  EOS.prints(string2cstr(str));
}

export function assert(condition: bool, msg : string) : void {
  if(condition == false) {
    EOS.eosio_assert(0,msg.toUTF8());
  }
}

function char_to_symbol( c : i32 ) : u64 {
  if( c >= 97 && c <= 122 )
     return (c - 97) + 6;
  if( c >= 49 && c <= 53 )
     return (c - 49) + 1;
  return 0;
}

export function N(str: string) : u64 {
  var name : u64 = 0;
  var i    : i32 = 0;
  for(; i < str.length && i < 12 ; i++) {
    name |= (char_to_symbol(str.charCodeAt(i)) & <u64>0x1f) << (64 - 5 * (i + 1));
  }
  if (i == 12)
    name |= char_to_symbol(str.charCodeAt(12)) & <u64>0x0F;
  return name;
}

export class Name {
  value : u64;

  constructor(name : string = "") {
    this.value = N(name);
  }

  to_string() : string {
      let s = allocate(13);
      let tmp = this.value;
      let start = false;
      for (let i = 0; i < 13; i++) {
          let index = <i16>(tmp & (i == 0 ? 0x0f : 0x1f));
          if (index != 0) { start = true; }
          if (start) {
              let char = CHARACTER_MAP.charCodeAt(index);
              store<u16>(changetype<usize>(s) + (12 - i) * 2, char, HEADER_SIZE);
          }
          tmp >>= (i == 0 ? 4 : 5);
      }
      return changetype<string>(s);
  }
}

export function get_ds() : DataStream {
  let len : u32 = EOS.action_data_size();
  let arr : Uint8Array = new Uint8Array(len);
  EOS.read_action_data(changetype<usize>(arr.buffer), len);
  let ds = new DataStream(changetype<usize>(arr.buffer), len);
  return ds;
}