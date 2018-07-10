import 'allocator/arena';
import {printn, printi, send_inline, db_find_i64, db_get_i64, db_store_i64, db_lowerbound_i64, db_next_i64, db_remove_i64, db_update_i64} from "../../lib/eoslib";
import { N, print, get_ds, eosio_assert } from "../../lib/utils";
import { DataStream } from '../../lib/Datastream';
import { TransferData, Asset } from '../../lib/TransferData';
import { Authorization } from "../../lib/types/Authorization";
import { Action } from "../../lib/types/Action";
import { S, Symbol } from '../../lib/types/Symbol';
import { Table } from '../../lib/Table';
import { Balance } from './balance';

class BankContract {
    scope : u64 = N("bank");
    table_name: u64 = N("balances");
    symbol : Symbol = S("SYS", 4);
    key : u64 = 0;
    table : Table;
    _self : u64;

    constructor(code : u64) {
        this._self = code;
        this.table = new Table(this.table_name, this._self);
    }

    onTransfer(from : u64, to : u64, amount : u64, token_symbol : u64, memo : string) : void {
        eosio_assert(amount > 0, "Amount must be positive")
        if (to == this._self) {
            var balance = this.getBalanceByAccount(from);
            eosio_assert(token_symbol == this.symbol.value , "Only SYS tokens are allowed");
            balance.amount += amount;
            this.saveBalance(balance);
        }
    }

    withdraw(to : u64, amount : u64, symbol : u64) : void {
        let iter = this.table.find(to, this.scope);
        eosio_assert(iter >= 0, "Account not found");
        let balance = this.table.findByIterator<Balance>(iter);
        let previous_amount = balance.amount;
        eosio_assert(balance.amount >= amount, "Not enough balance");
        balance.amount -= amount;
        eosio_assert(balance.amount <= previous_amount, "Balance cannot increase");
        eosio_assert(balance.account == to, "End account must be the same");
        let ds = createTransferAction(this._self, to, amount, "refund", this._self);
        send_inline(ds.buffer, ds.currentPos);
        this.table.updateByIterator<Balance>(iter, to, balance);
    }

    getSymbol() : void {
        let symbol = S("SYS", 4);
        print("\nSymbol: ");
        print(symbol.toString());
        printi(symbol.precision);
    }

    private getBalanceByAccount(account : u64) : Balance {
        var iter = this.table.find(account, this.scope);
        if (iter >= 0) {
            return this.table.findByIterator<Balance>(iter);
        }
        else {
            let balance_p = allocate_memory(Balance.len());
            let balance = changetype<Balance>(balance_p);
            balance.account = account;
            return balance;
        }
    }

    private saveBalance(balance : Balance) : void {
        let iter : i32 = this.table.find(balance.account, this.scope);
        if (iter >= 0) {
            this.table.updateByIterator<Balance>(iter, balance.account, balance);
        }
        else {
            this.table.create<Balance>(balance.account, balance.account, balance, this.scope);
        }
    }

    refundAll() : void {
        this.table.forEach<Balance>(this.scope, (iter : i32, balance : Balance, context : Table) : void => {
            print("\nRefunding: ");
            printn(balance.account);
            let ds = createTransferAction(context.contract_name, balance.account, balance.amount, "refund", context.contract_name);
            send_inline(ds.buffer, ds.currentPos);
            db_remove_i64(iter);
        })
    }
}

function createTransferAction(from : u64, to : u64, amount : u64, memo : string, auth : u64) : DataStream {
    //from, to, amount, memo (withdraw)
    let auths = new Array<Authorization>();
    auths.push(new Authorization(auth, N("active")))
    let symbol = S("SYS", 4);
    let asset = new Asset(amount, symbol.value);
    let tx_data = new TransferData(auth, to, asset, memo);
    let action = new Action<TransferData>(N("eosio.token"), N("transfer"), auths, <TransferData> tx_data);
    return action.to_ds();
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