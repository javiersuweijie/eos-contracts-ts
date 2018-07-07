import { Data } from "../../lib/types/Data";
import { DataStream } from "../../lib/Datastream";

export class Balance implements Data {
    constructor(
        public account : u64,
        public amount : u64
    ) {}

    to_ds() : DataStream {
        let arr = new Int8Array(this.len());
        let ds = new DataStream(changetype<usize>(arr.buffer), this.len());
        ds.store<u64>(this.account);
        ds.store<u64>(this.amount);
        return ds;
    }
    
    len() : i32 {
        return 16;
    }

    from_ds(ds : DataStream) : void {
        this.account = ds.read<u64>();
        this.amount  = ds.read<u64>();
    }

    static from_ds(ds : DataStream) : Balance {
        return new Balance(ds.read<u64>(), ds.read<u64>());
    }

    static len() : i32 {
        return 16;
    }
}