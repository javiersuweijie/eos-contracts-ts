import * as eos from "./eoslib";
import {DataStream} from "./datastream";

export class Contract {
  constructor(public receiver: u64) {}

  get dataStream() : DataStream {
    let len = eos.action_data_size();
    let arr = new Uint8Array(len);
    read_action_data(changetype<usize>(arr.buffer), len);
    return new DataStream(changetype<usize>(arr.buffer), len);
  }
}
