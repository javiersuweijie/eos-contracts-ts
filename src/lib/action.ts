import { DataStream } from "./datastream";

/*
{
    "account":"eosio.token",
    "name":"transfer",
    "authorization":[
        {
            "actor":"babysu",
            "permission":"active"
        }
    ],
    "data": {
        "from":"babysu",
        "to":"babyhan",
        "quantity":"1.0000 EOS","memo":""
   }
}
*/

export class Data {
  to_ds() : DataStream {
      assert(0, "Not to be called");
      return <DataStream>null
    };
  len() : i32 {
      assert(0, "Not to be called");
      return 0
    };
}

export class Action {
    constructor(
        public account : u64,
        public name : u64,
        public authorizations : Authorization[],
        public data : Data
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
        ds.writeVarint32((<TransferData>this.data).len());
        ds.writeData<TransferData>(<TransferData>this.data);
        return ds;
    }
}

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