import 'allocator/arena';
import * as eos from '../../lib/eoslib';
import { Name, print } from '../../lib/utils';
import { DataStream } from '../../lib/datastream';

class Message {
    account: Name;
    memo: string;

    constructor(ds : DataStream) {
        this.account = new Name();
        this.account.value = ds.read<u64>();
        this.memo = ds.readString();
    }

    print_message() : void {
        print(this.memo);
        eos.printn(this.account.value);
    }
}

/**
 * Entrypoint for the eos contract
 *
 */
export function apply(receiver: u64, code: u64, action: u64): void {
    let ds : DataStream = get_ds();
    let message = new Message(ds);
    message.print_message();
    //eos.require_auth(message.account);
}

function get_ds() : DataStream {
    let len : u32 = eos.action_data_size();
    let arr : Uint8Array = new Uint8Array(len);
    eos.read_action_data(changetype<usize>(arr.buffer), len);
    let ds = new DataStream(changetype<usize>(arr.buffer), len);
    return ds;
}
