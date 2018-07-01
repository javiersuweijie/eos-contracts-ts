import 'allocator/arena';
import {printn, printi, prints} from "../eoslib";
import { N, print, get_ds, Symbol, Name } from "../utils";

class BankContract {
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
}

export function apply(receiver : u64, code : u64, action : u64) : void {
    let bankContract = new BankContract();
    let ds = get_ds();
    if (code == N("eosio.token") && action == N("transfer")) {
        print("transfer action called\n");
        bankContract.onTransfer(
            ds.read<u64>(),
            ds.read<u64>(),
            ds.read<u64>(),
            ds.read<u64>(),
            ds.readString()
        )
    }
    else {
        print("unknown action called\n");
    }
}