#!/bin/bash
NAME=$1
if [ -z "$NAME" ]; then
	NAME=World
fi
printf "Hello %s\n" $NAME
