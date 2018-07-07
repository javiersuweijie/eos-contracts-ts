import * as eos from "./eoslib"
import { DataStream } from "./Datastream";
import { allocate, HEADER_SIZE } from "../../node_modules/assemblyscript/std/assembly/internal/string";

export const CHARACTER_MAP : string = ".12345abcdefghijklmnopqrstuvwxyz";

@inline
export function print(str: string) : void {
  eos.prints(str.toUTF8());
}

@inline
export function assert(condition: bool, msg : string = null) : void {
  if(!condition) eos.eosio_assert(0, msg ? msg.toUTF8() : 0);
}

@inline
function char_to_symbol( c : i32 ) : u64 {
  if(c >= 97 && c <= 122) return (c - 97) + 6;
  if(c >= 49 && c <=  53) return (c - 49) + 1;
  return 0;
}

export function N(str: string) : u64 {
  if (str.length > 12)
    throw new TypeError('Input string exceeds 12 chars lengths limit');

  var name : u64 = 0;
  var i    : i32 = 0;
  var len  : i32 = str.length;
  for(; i < len && i < 12 ; i++) {
    name |= (char_to_symbol(str.charCodeAt(i)) & <u64>0x1f) << (64 - 5 * (i + 1));
  }
  name |= char_to_symbol(str.charCodeAt(12)) & <u64>0x0F;
  return name;
}

/* EOSIO stores names as a u64 number and uses the {CHARACTER_MAP} to map the integer with the character
  For example, N('eosio')
  01010 e
  10100 o
  11000 s
  01110 i
  10100 o
  00000 .
  ...
  00000 .
  0000  . (note the last character has only 4 bits)
*/
export class Name {
  protected _value : u64;

  constructor(name : string = "") {
    this._value = N(name);
  }

  @inline
  get value(): u64 {
    return this._value;
  }

  @inline
  set value(value: u64) {
    this._value = value;
  }

  @inline
  setName(name : string) : void {
    this._value = N(name);
  }

  toString() : string {
    var s = allocate(13);
    var tmp = this._value;
    var start = false;

    for (let i = 0; i < 13; i++) {

      let char5bit = <i16>(tmp & (i == 0 ? 0x0f : 0x1f));
      if (char5bit != 0) {
        // skip if name is left padded by 0s
        start = true;
      }
      if (start) {
        let char = CHARACTER_MAP.charCodeAt(char5bit);
        store<u16>(changetype<usize>(s) + ((12 - i) << 1), char, HEADER_SIZE);
      }
      tmp >>= (i == 0 ? 4 : 5);
    }
    return changetype<string>(s);
  }

  @inline @operator("==")
  static eq(a : Name, b : Name) : bool {
    return a.value == b.value;
  }
}


export function get_ds() : DataStream {
  var len : u32 = eos.action_data_size();
  var arr : Uint8Array = new Uint8Array(len);
  eos.read_action_data(changetype<usize>(arr.buffer), len);
  var ds = new DataStream(changetype<usize>(arr.buffer), len);
  return ds;
}
