import 'allocator/arena';
import {printn, printi, prints, send_inline, printhex, db_find_i64, db_get_i64, db_store_i64, db_lowerbound_i64, db_next_i64, db_remove_i64, db_update_i64} from "../../lib/eoslib";
import { N, print, get_ds, Name, assert } from "../../lib/utils";
import { DataStream } from '../../lib/datastream';
import { Authorization, TransferData, Action, Data, Asset } from '../../lib/action';
import { Symbol, S } from '../../lib/types/symbol';

class BankContract {
    scope : u64 = N("bank");
    table : u64 = N("balances");
    key : u64 = 0;

    constructor(
        protected _self : u64
    ) {}

    onTransfer(from : u64, to : u64, amount : u64, token_symbol : u64, memo : string) : void {
        assert(amount > 0, "Amount must be positive")
        if (to == this._self) {
            let balance = this.getBalanceByAccount(from);
            let symbol = S("SYS", 4);
            assert(token_symbol == symbol.value , "Only SYS tokens are allowed");
            balance.amount += amount;
            this.saveBalance(balance);
        }
    }

    withdraw(to : u64, amount : u64, symbol : u64) : void {
        //from, to, amount, memo (withdraw)
        let auths = new Array<Authorization>();
        auths.push(new Authorization(this._self, N("active")))
        let asset = new Asset(amount, symbol);
        let tx_data = new TransferData(this._self, to, asset, "hello");
        let action = new Action(N("eosio.token"), N("transfer"), auths, <Data> tx_data);
        let ds = action.to_ds();
        send_inline(ds.buffer, ds.currentPos);
    }

    getSymbol() : void {
        let symbol = S("SYS", 4);
        print("\nSymbol: ");
        print(symbol.toString());
        printi(symbol.precision);
    }

    private getBalanceByAccount(account : u64) : Balance {
        let iter = db_find_i64(this._self, this.scope, this.table, account);
        if (iter >=0 ) {
            let len = 24;
            let arr = new Uint8Array(len);
            db_get_i64(iter, changetype<usize>(arr.buffer), len);
            let output = new DataStream(changetype<usize>(arr.buffer), len);
            return Balance.from_ds(output);
        }
        else {
            return new Balance(account, 0);
        }
    }

    private getBalanceByIter(iter : i32) : Balance {
            let len = 16;
            let arr = new Uint8Array(len);
            db_get_i64(iter, changetype<usize>(arr.buffer), len);
            let output = new DataStream(changetype<usize>(arr.buffer), len);
            output.reset();

            let balance = Balance.from_ds(output);
            print("\nFound account: ");
            printn(balance.account);
            printi(balance.amount);

            return balance;
    }

    private saveBalance(balance : Balance) : void {
        var iter = db_find_i64(this._self, this.scope, this.table, balance.account);
        if (iter >= 0) {
            let ds = balance.to_ds();
            db_update_i64(iter, balance.account, changetype<usize>(ds.buffer), ds.currentPos);
        }
        else {
            let ds = balance.to_ds();
            db_store_i64(this.scope, this.table, balance.account, balance.account, changetype<usize>(ds.buffer), ds.currentPos);
        }
    }

    refundAll() : void {
        let iterator = db_lowerbound_i64(this._self, this.scope, this.table, 0);
        let i : i32 = 0;
        while (iterator >= 0) {
            let balance = this.getBalanceByIter(iterator);
            this.withdraw(balance.account, balance.amount, S("SYS", 4).value);
            let del = iterator;
            iterator = db_next_i64(iterator, changetype<usize>(this) + offsetof<this>("key"));
            db_remove_i64(del);
            i++;
          }
        print("\nRefunded ");
        printi(i);
    }
}

export function apply(receiver : u64, code : u64, action : u64) : void {
    let bankContract = new BankContract(receiver);
    let ds = get_ds();
    if (code == N("eosio.token") && action == N("transfer")) {
        print("\ntransfer action called");
        bankContract.onTransfer(
            ds.read<u64>(),
            ds.read<u64>(),
            ds.read<u64>(),
            ds.read<u64>(),
            ds.readString()
        )
    }
    else if (action == N("withdraw")) {
        bankContract.withdraw(ds.read<u64>(), ds.read<u64>(), ds.read<u64>());
    }
    else if (action == N("getsymbol")) {
        bankContract.getSymbol();
    }
    else if (action == N("refundall")) {
        bankContract.refundAll();
    }
    else {
        print("unknown action called\n");
    }
}

class Balance implements Data {
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

    static from_ds(ds : DataStream) : Balance {
        return new Balance(ds.read<u64>(), ds.read<u64>());
    }
}