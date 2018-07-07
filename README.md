# eos-contracts-ts
Some experiments on writing EOS contracts using [AssemblyScript](https://github.com/AssemblyScript/assemblyscript) (A subset of Typescript)

There are 3 contracts currently:
  1. Helloworld
  2. Todolist
  3. Bank
  
## Hello World ##
Demonstrates a simple contract to print messages on the console

## Todolist ##
There are 6 actions on this contract:
  1. add
  2. assign
  3. get
  4. update
  5. remove
  6. removeall

This contract demonstrates how to interface with the EOS C API to store rows on the EOS database

## Bank ##
There are 3 actions on this contract and a listener for the transaction action of eosio.token:
  1. transfer (listens to the transfer action when tokens are transfered to this contract)
  2. withdraw
  3. refundall
  4. getsymbol
  
This contract demonstrates handling of incoming transfers and using the `send_inline` API to send actions.

Special thanks to [EOSArgentina](http://github.com/EOSArgentina) for the sample game of life contract.
