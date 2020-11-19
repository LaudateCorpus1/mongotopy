#!/bin/sh

# requires SSH agent forwarding
servers="archi loquy boole sonic higgs"
for server in $servers; do
  echo $server
  ssh root@$server.lichess.ovh "cd /home/mongotopy && git pull origin master && systemctl restart mongotopy"
done
