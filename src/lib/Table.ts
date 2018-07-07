import { DataStream } from './Datastream';
import { db_find_i64, db_get_i64 } from "./eoslib";

export class Table<T> {
    constructor(
        public table_name : u64,
        public contract_name : u64
    ){}

    find<T>(key: u64, scope : u64, object : T) : bool {
        var iter  = db_find_i64(this.contract_name, scope, this.table_name, key);
        if (iter >= 0 ) {
            let len = db_get_i64(iter, 0, 0);
            let arr = new Uint8Array(len);
            db_get_i64(iter, changetype<usize>(arr.buffer), len);
            let ds = new DataStream(changetype<usize>(arr.buffer), len);
            object.from_ds(ds);
            return true;
        }
        else {
            return false;
        }
    }

    create(): number {
        throw new Error("Method not implemented.");
    }
    update(): number {
        throw new Error("Method not implemented.");
    }
    forEach(): void {
        throw new Error("Method not implemented.");
    }
    filter(): T {
        throw new Error("Method not implemented.");
    }


}