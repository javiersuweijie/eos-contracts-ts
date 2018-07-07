import { DataStream } from "../Datastream";
import { Data } from "./Data";

export class Authorization implements Data {
    constructor(
        public actor : u64,
        public permission : u64
    ) {}

    to_ds() : DataStream {
        let arr = new Int8Array(16);
        let ds = new DataStream(changetype<usize>(arr.buffer), 16);
        ds.store<u64>(this.actor);
        ds.store<u64>(this.permission);
        return ds;
    }

    len() : i32 {
        return 16;
    }
}