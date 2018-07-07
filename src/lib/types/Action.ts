import { DataStream } from "../Datastream";
import { Authorization } from "./Authorization";
import { Data } from "./Data";

/*
{
    "account":"eosio.token",
    "name":"transfer",
    "authorization":[
        {
            "actor":"alice",
            "permission":"active"
        }
    ],
    "data": {
        "from":"alice",
        "to":"bob",
        "quantity":"1.0000 EOS","memo":""
   }
}
*/

export class Action<T> {
    constructor(
        public account : u64,
        public name : u64,
        public authorizations : Authorization[],
        public data : T
    ) {}

    to_ds() : DataStream {
        let len : i32 = 16;
        len += 1 + this.authorizations.length * 16;
        let dataDS : DataStream = this.data.to_ds();
        len += 2 + dataDS.len;
        let arr = new Int8Array(len);
        let ds = new DataStream(changetype<usize>(arr.buffer), len);
        ds.store<u64>(this.account);
        ds.store<u64>(this.name);
        ds.writeVarint32(this.authorizations.length);
        for (var i = 0; i < this.authorizations.length; i++) {
            ds.writeData<Authorization>(this.authorizations[i]);
        }
        ds.writeVarint32((this.data).len());
        ds.writeData<T>(<T>this.data);
        return ds;
    }
}