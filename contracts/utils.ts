import * as EOS from "./eoslib"
import { DataStream } from "./datastream";
import { allocate, HEADER_SIZE } from "../node_modules/assemblyscript/std/assembly/internal/string";

export const CHARACTER_MAP : string = ".12345abcdefghijklmnopqrstuvwxyz";

@inline
export function print(str: string) : void {
  EOS.prints(str.toUTF8());
}

@inline
export function assert(condition: bool, msg : string = null) : void {
  if(!condition) EOS.eosio_assert(0, msg ? msg.toUTF8() : 0);
}

@inline
function char_to_symbol( c : i32 ) : u64 {
  if(c >= 97 && c <= 122) return (c - 97) + 6;
  if(c >= 49 && c <=  53) return (c - 49) + 1;
  return 0;
}

export function N(str: string) : u64 {
  var name : u64 = 0;
  var i    : i32 = 0;
  var len  : i32 = str.length;
  for(; i < len && i < 12 ; i++) {
    name |= (char_to_symbol(str.charCodeAt(i)) & <u64>0x1f) << (64 - 5 * (i + 1));
  }
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
      // let index = <i16>(tmp & (i == 0 ? 0x0f : 0x1f));
      let index = <i16>(tmp & ((<u64>(i == 0) << 4) | 0xf));
      if (index != 0) { start = true; }
      if (start) {
        let char = CHARACTER_MAP.charCodeAt(index);
        store<u16>(changetype<usize>(s) + ((12 - i) << 1), char, HEADER_SIZE);
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
