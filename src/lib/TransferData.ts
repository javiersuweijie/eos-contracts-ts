import { DataStream } from "./Datastream";
import { Data } from "./types/Data";

export class TransferData implements Data {
    constructor(
        public from : u64,
        public to   : u64,
        public quantity : Asset,
        public memo : string
    ) {}

    to_ds() : DataStream {
        let arr = new Int8Array(this.len());
        let ds = new DataStream(changetype<usize>(arr.buffer), this.len());
        ds.store<u64>(this.from);
        ds.store<u64>(this.to);
        ds.writeData<Asset>(this.quantity);
        ds.writeString(this.memo);
        return ds;
    }
    
    len() : i32 {
        return 16 + this.quantity.len() + 1 + this.memo.length;
    }
}

export class Asset implements Data {
    constructor(
        public amount : u64,
        public symbol : u64
    ) {}

    to_ds() : DataStream {
        let arr = new Int8Array(this.len());
        let ds = new DataStream(changetype<usize>(arr.buffer), this.len());
        ds.store<u64>(this.amount);
        ds.store<u64>(this.symbol);
        return ds; 
    }

    len() : i32 {
        return 16;
    }

    from_ds(ds : DataStream) : void {
        this.amount = ds.read<u64>();
        this.symbol = ds.read<u64>();
    }
}