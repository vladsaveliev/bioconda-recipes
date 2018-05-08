#!/bin/bash
mkdir -p $PREFIX/bin

mkdir -p "src/github.com/prasmussen"
ln -sf $SRC_DIR "src/github.com/prasmussen/gdrive"
cd "src/github.com/prasmussen/gdrive"

export GOPATH="$SRC_DIR/"
go build -o gdrive .
mv gdrive $PREFIX/bin
