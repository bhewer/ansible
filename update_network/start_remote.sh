#!/bin/bash

if [ ! -f ~/.ssh/id_apps ] ; then
        ssh-keygen -t ed25519 -f id_apps -N '' -C "auto-generated key to access remote apps"
        cat ~/.ssh/id_apps.pub >> ~/.ssh/authorized_keys
fi
pyhoca-cli --server "$2" -c "$3" -q lan --pack 16m-jpeg-9
