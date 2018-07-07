// Credits to EOSArgentina
// https://github.com/EOSArgentina/eostypescript

import {
  HEADER_SIZE,
  allocate,
} from "../../node_modules/assemblyscript/std/assembly/internal/string";
import { printi } from "./eoslib";
import { print } from "./utils";

export class DataStream {

  protected _pos: u32 = 0

  constructor(
    public buffer: u32,
    public len:    u32
  ) {}

  get currentPos(): u32 {
    return this._pos;
  }

  skip(value: u32): void {
    this._pos += value;
  }

  readVarint32(): u32 {
    var value: u32 = 0;
    var shift: u32 = 0;
    do {
      var b = this.read<u8>();
      value |= <u32>(b & 0x7f) << (7 * shift++);
    } while (b & 0x80);
    return value;
  }

  writeVarint32(value : u32): void {
    do {
      let b : u8  = <u8>value & <u8>0x7f;
      value >>= 7;
      b |= ((value > 0 ? 1 : 0) << 7);
      this.store<u8>(b);
    } while( value );
  }

  store<T>(value : T) : void {
    store<T>(this.buffer + this._pos, value);
    this._pos += sizeof<T>();
  }

  read<T>() : T {
    var value : T = load<T>(this.buffer + this._pos);
    this._pos += sizeof<T>();
    return value;
  }

  readVector<T>() : T[] {
    var len = this.readVarint32();
    if( len == 0 ) return <T[]>[];

    var arr = new Array<T>(len);
    for(let i : u32 = 0; i < len; i++) {
      arr[i] = read<T>();
    }

    return arr;
  }

  readString() : string {
    var len = this.readVarint32();
    if(len == 0) return "";
    let s = allocate(len);

    var i: u32 = 0;
    while(i < len) {
      let b : u16 = this.read<u8>();
      store<u16>(<usize>s + (i << 1), b, HEADER_SIZE);
      i++;
    }

    return <string>s;
  }

  writeString(str : string) : void {
    var len : i32 = str.length;
    this.writeVarint32(len);
    if(len == 0) return;

    var ptr = str.toUTF8();
        len = str.lengthUTF8 - 1;

    move_memory(this.buffer + this._pos, <usize>ptr, len);
    this._pos += len;
  }
  
  writeData<T>(data : T) : void {
    var len : u32 = data.len();
    var ds = data.to_ds();
    move_memory(this.buffer + this._pos, changetype<usize>(ds.buffer), len);
    this._pos += len;
  }

  reset() : void {
    this._pos = 0;
  }
};
