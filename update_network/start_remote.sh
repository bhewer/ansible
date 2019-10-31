#!/bin/bash
/usr/local/bin/generate_remoteKey $1
pyhoca-cli --server "$2" -c "$3" -q lan --pack 16m-jpeg-9 --kbd-type auto -g maximize
