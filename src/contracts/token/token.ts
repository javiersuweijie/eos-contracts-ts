import "allocator/arena";
import { N, print, eosio_assert, get_ds, createTransferAction } from "../../lib/utils";
import { Table } from "../../lib/Table";
import { Asset } from "../../lib/TransferData";
import { require_auth, printn, printi, printhex, send_inline, db_remove_i64, require_recipient} from "../../lib/eoslib";
import { Data } from "../../lib/types/Data";
import { DataStream } from "../../lib/Datastream";

class CurrencyInfo implements Data {

    supply_amount : u64;
    supply_symbol : u64;
    max_supply_amount : u64;
    max_supply_symbol : u64;
    issuer : u64;

    constructor(
        supply : Asset,
        max_supply : Asset,
        issuer : u64
    ) {
        this.supply_amount = supply.amount;
        this.supply_symbol = supply.symbol;
        this.max_supply_amount = max_supply.amount;
        this.max_supply_symbol = max_supply.symbol;
        this.issuer = issuer;
    }

    get supply() : Asset {
        return new Asset(this.supply_amount, this.supply_symbol);
    }

    get max_supply() : Asset {
        return new Asset(this.max_supply_amount, this.max_supply_symbol);
    }

    len(): i32 {
        return 40;
    }

    to_ds() : DataStream {
        let ds = new DataStream(changetype<usize>(this), this.len());
        ds.skip(this.len());
        return ds;
    }

}

class Account implements Data {

    public balance_amount : u64;
    public balance_symbol : u64;
    public LEN : i32 = 16;

    constructor(amount : u64, symbol : u64){
        this.balance_amount = amount;
        this.balance_symbol = symbol;
    }

    get balance() : Asset {
        return new Asset(this.balance_amount, this.balance_symbol);
    }

    len(): i32 {
        return this.LEN;
    }

    to_ds() : DataStream {
        let ds = new DataStream(changetype<usize>(this), this.LEN);
        ds.skip(this.LEN);
        return ds;
    }
}

class TokenContract {
    constructor(
        public _self : u64
    ) {}

    create(issuer : u64, max_amount : u64, symbol : u64) : void {
        //assert valid symbol
        //assert valid max_amount
        require_auth(issuer);
        require_auth(this._self);

        eosio_assert(max_amount > 0, "Invalid max amount");
        let stats_table = new Table(N("stat"), this._self);
        let existing = stats_table.find(name(symbol), name(symbol));
        eosio_assert(existing < 0, "Symbol already exists");
        let currency_info = new CurrencyInfo(
            new Asset(0, symbol), 
            new Asset(max_amount, symbol),
            issuer
        )
        stats_table.create<CurrencyInfo>(issuer, name(symbol), currency_info, name(symbol));
    }

    issue(to : u64, amount : u64, symbol : u64, memo : string) : void {
        //assert valid symbol
        assert (memo.length <= 256, "Memo is longer than 256");
        let stats_table = new Table(N("stat"), this._self);
        let existing = stats_table.find(name(symbol), name(symbol));
        eosio_assert(existing >= 0, "Symbol does not exists");

        let currency_info = stats_table.findByIterator<CurrencyInfo>(existing);

        require_auth(currency_info.issuer);
        eosio_assert(amount > 0, "Issue amount must be more than 0");
        eosio_assert(currency_info.supply.symbol == symbol, "Symbol mismatch");
        currency_info.supply_amount += amount;
        stats_table.updateByIterator<CurrencyInfo>(existing, 0, currency_info);

        let transfering_asset = new Asset(amount, symbol);
        this.addBalance(currency_info.issuer, transfering_asset, currency_info.issuer);
        if( to != currency_info.issuer ) {
            let ds = createTransferAction(
                this._self,
                currency_info.issuer,
                to,
                transfering_asset,
                "Issue",
                currency_info.issuer
            )
            send_inline(ds.buffer, ds.currentPos);
         }

    }

    transfer(from : u64, to : u64, amount : u64, symbol : u64, memo : string) : void {
        eosio_assert( from != to, "cannot transfer to self" );
        require_auth( from );
        //eosio_assert( is_account( to ), "to account does not exist");
        let symbol_name = name(symbol);
        let stats_table = new Table(N("stat"), this._self);
        let iter = stats_table.find(symbol_name, symbol_name);
        eosio_assert(iter >= 0, "Currency does not exist");

        let currency_info = stats_table.findByIterator<CurrencyInfo>(iter);

        require_recipient(from);
        require_recipient(to);

        //eosio_assert( quantity.is_valid(), "invalid quantity" );
        eosio_assert( amount > 0, "must transfer positive quantity" );
        eosio_assert( symbol == currency_info.supply_symbol, "symbol precision mismatch" );
        eosio_assert( memo.length <= 256, "memo has more than 256 bytes" );

        let transfer_asset = new Asset(amount, symbol);
        this.subBalance(from, transfer_asset, from);
        this.addBalance(to, transfer_asset, from);
    }

    private addBalance(owner : u64, asset : Asset, payer : u64) : void {
        var account_table = new Table(N("accounts"), this._self);
        var symbol_name = name(asset.symbol);
        var iter = account_table.find(symbol_name, owner);
        if (iter < 0) {
            let account = new Account(asset.amount, asset.symbol);
            account_table.create<Account>(payer, symbol_name, account, owner);
        }
        else {
            let account = account_table.findByIterator<Account>(iter);
            account.balance_amount += asset.amount;
            account_table.updateByIterator<Account>(iter, payer, account);
        }
    }
    
    private subBalance(owner : u64, asset : Asset, payer : u64) : void {
        var account_table = new Table(N("accounts"), this._self);
        var symbol_name = name(asset.symbol);
        var iter = account_table.find(symbol_name, owner);
        let account = account_table.findByIterator<Account>(iter);

        eosio_assert( account.balance_amount >= asset.amount, "not enough balance");
        account.balance_amount -= asset.amount;
        account_table.updateByIterator<Account>(iter, payer, account);
    }

    // public wipe(account : u64) : void {
    //     require_auth(this._self);
    //     var account_table = new Table(N("accounts"),  this._self);
    //     account_table.forEach<Account>(account, (iter : i32, account : Account, context : Table) : void => {
    //         db_remove_i64(iter);
    //     })
    // }

}



@inline
function name(symbol : u64) : u64 {
    return symbol >> 8;
}

export function apply(receiver : u64, code : u64, action : u64) : void {
    let contract = new TokenContract(receiver);
    let ds = get_ds();
    if (action == N("transfer")) {
        contract.transfer(ds.read<u64>(), ds.read<u64>(), ds.read<u64>(), ds.read<u64>(),ds.readString());
    }
    else if (action == N("issue")) {
        contract.issue(ds.read<u64>(), ds.read<u64>(), ds.read<u64>(),ds.readString());
    }
    else if (action == N("create")) {
        contract.create(ds.read<u64>(),ds.read<u64>(),ds.read<u64>());
    }
    // else if (action == N("wipe")) {
    //     contract.wipe(ds.read<u64>());
    // }
    else {
        print("unknown action called\n");
    }
}