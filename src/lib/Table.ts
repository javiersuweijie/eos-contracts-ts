import { db_find_i64, db_get_i64, db_store_i64, printi, prints, printhex, printn, db_update_i64, db_lowerbound_i64, db_next_i64 } from "./eoslib";

export class Table {
    constructor(
        public table_name : u64,
        public contract_name : u64
    ){}

    find(key: u64, scope : u64) : i32 {
        return db_find_i64(this.contract_name, scope, this.table_name, key);
    }

    findByIterator<T>(iter : i32) : T {
        let len = db_get_i64(iter, 0, 0);
        let pointer = allocate_memory(len);
        db_get_i64(iter, pointer, len);
        return changetype<T>(pointer);
    }

    create<T>(payer: u64, key : u64, entity: T, scope : u64) : void {
        let ds = entity.to_ds();
        db_store_i64(scope, this.table_name, payer, key, changetype<usize>(ds.buffer), ds.currentPos);
    }

    updateByIterator<T>(iter : i32, payer : u64, entity : T) : void {
        let ds = entity.to_ds();
        db_update_i64(iter, payer, changetype<usize>(ds.buffer), ds.currentPos);
    }

    forEach<T>(scope : u64, callback : (iter : i32, entity : T, context : Table) => void) : void {
        let iter = db_lowerbound_i64(this.contract_name, scope, this.table_name, 0);
        let key_p = allocate_memory(sizeof<u64>());
        while (iter >= 0) {
            let len = db_get_i64(iter, 0, 0);
            let p = allocate_memory(len);
            db_get_i64(iter, p, len);
            let current = iter;
            iter = db_next_i64(iter, key_p);
            callback(current, changetype<T>(p), this);
        }
        free_memory(key_p);
    }

    filter(): T {
        throw new Error("Method not implemented.");
    }


}