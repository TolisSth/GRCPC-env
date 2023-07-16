#!/bin/bash

SSHPORT=2222
SSHKEY="$PWD/configs/imageadmin-ssh_key"

chmod 0400 "$SSHKEY"
ssh -i "$SSHKEY" -o  IdentitiesOnly=yes -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null imageadmin@localhost -p$SSHPORT "$@" 2>/dev/null

