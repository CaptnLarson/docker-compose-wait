cargo test

TARG=x86_64-unknown-linux-musl
cargo build --release --target=${TARG}
strip ./target/$TARG/release/wait

TARG=armv7-unknown-linux-musleabihf
cargo build --release --target=${TARG}
arm-none-eabi-strip ./target/$TARG/release/wait
