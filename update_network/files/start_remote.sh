#!/bin/bash
generate_remoteKey $1
pyhoca-cli --server "$2" -c "$3" -q lan --pack 16m-jpeg-9
