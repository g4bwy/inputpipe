#!/bin/sh

if [ -z $1 ]; then
	HOST=kloug
else
	HOST=$1
fi

ssh $HOST pkill inputpipe
ssh -f -L 7192:localhost:7192 $HOST "/home/gab/bin/inputpipe-server -a 127.0.0.1" && inputpipe-client -a localhost

