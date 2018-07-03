import 'allocator/arena';
import {printn, printi, prints, send_inline, printhex} from "../eoslib";
import { N, print, get_ds, Symbol, Name, assert } from "../utils";
import { DataStream } from '../datastream';
import { Authorization, TransferData, Action, Data, Asset } from '../action';

class BankContract {
    constructor(
        protected _self : u64
    ) {}

    onTransfer(from : u64, to : u64, amount : u64, token_symbol : u64, memo : string) : void {
        print("\nFrom: ");
        printn(from);
        print("\nTo: ");
        printn(to);
        print("\nAmount: ");
        printi(amount);
        print("\nToken: ");
        print("\n");
        let symbol = new Symbol(token_symbol);
        print(symbol.to_string());
        print(" ");
        printi(symbol.precision);
        print("\nMemo: ");
        print(memo);
    }

    withdraw(to : u64, amount : u64, symbol : u64) : void {
        //from, to, amount, memo (withdraw)
        let auths = new Array<Authorization>();
        auths.push(new Authorization(this._self, N("active")))
        let asset = new Asset(amount, symbol);
        let tx_data = new TransferData(this._self, to, asset, "hello");
        let action = new Action(N("eosio.token"), N("transfer"), auths, <Data> tx_data);
        let ds = action.to_ds();
        printi(amount);
        print("\nSize of action: \n");
        printi(ds.currentPos);
        printhex(changetype<usize>(ds.buffer), ds.currentPos);

        ds.reset();
        //contract
        printn(ds.read<u64>());
        //action
        printn(ds.read<u64>());
        //auth#
        printi(ds.readVarint32());
        //actor
        printn(ds.read<u64>());
        //permission
        printn(ds.read<u64>());
        //data len
        printi(ds.readVarint32());
        //from
        printn(ds.read<u64>());
        //to
        printn(ds.read<u64>());
        //amount
        printi(ds.read<u64>());
        //symbol
        let s = new Symbol(ds.read<u64>());
        print(s.to_string());
        //memo
        print(ds.readString());
        send_inline(ds.buffer, ds.currentPos);
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
    else {
        print("unknown action called\n");
    }
}