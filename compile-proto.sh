#!/bin/sh

set -e

bin/protoc --objc_out=ObjCProtoExample/ foo.proto
