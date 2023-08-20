#!/bin/bash 
set -e

sudo apt install build-essential -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y 
source "$HOME/.cargo/env"
export FACTORY="0x0000000000FFe8B47B3e2130213B802212439497" 
export CALLER="0x0000000000000000000000000000000000000000" 
export INIT_CODE_HASH="0x0"
cargo run --release $FACTORY $CALLER $INIT_CODE_HASH 0 0 0 
