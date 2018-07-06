import { Data } from "../action";
import { allocate, HEADER_SIZE } from "../../../node_modules/assemblyscript/std/assembly/internal/string";
import { DataStream } from "../datastream";

export class Symbol implements Data {
  precision : u64;
  value : u64;

  constructor (value : u64) {
    this.value = value;
    this.precision = this.value & 0xff;
  }

  toString() : string {
    var s = allocate(7)
    var len : usize = 0;
    for (let i = 0; i < 7; i++) {
      let char : i32 = <i32> (this.value >> (8 * (7 - i)) & 0xff);
      if (char != 0) {
        store<u16>(changetype<usize>(s) + (len << 1), char, HEADER_SIZE);
        len++;
      }
    }
    store<i32>(changetype<usize>(s), <i32>len);
    //printi(load<i16>(changetype<usize>(s) + 4));
    //printhex(changetype<usize>(s), 10);
    return changetype<string>(s);
  }

  to_ds() : DataStream {
    let arr = new Int8Array(this.len());
    let ds = new DataStream(changetype<usize>(arr.buffer), this.len());
    ds.store<u64>(this.value);
    return ds;
  }

  len() : i32 {
    return 16;
  }
}

export function S(symbol : string, precision : u8) : Symbol {
    // 0x--      0x-- 0x-- 0x-- 0x-- 0x-- 0x-- 0x--
    // precision char char char char char char char
    // 0x04      S    Y    S    0xff 0xff 0xff 0xff
    // big endian representation
    // char7 char6 char5 char4 char3 char2 char1 precision
    var symbolValue : u64 = 0;
    symbolValue |= precision;
    for (let i = 0; i < symbol.length; i++) {
        let char = symbol.charCodeAt(i);
        symbolValue |= (char << (8 * (1 + i)));
    }
    return new Symbol(symbolValue);
}