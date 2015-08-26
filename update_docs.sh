#!/bin/bash

set -e
set -x
cd documentation/__documentation
cargo update
cargo clean
cargo doc
cd -
cp -r documentation/__documentation/target/doc/* documentation
cd -
cargo clean
cd -

