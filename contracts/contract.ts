import {env} from "./eoslib";
import {DataStream} from "./datastream";

export class Contract {

    receiver : u64;
  
    constructor(receiver: u64) {
      this.receiver = receiver;
    }
    
    get_ds() : DataStream {
      let len = env.action_data_size();
      let arr = new Uint8Array(len);
      read_action_data(<usize>arr.buffer, len);
      let ds = new DataStream(<usize>arr.buffer, len);
      return ds;
    }
  
  }