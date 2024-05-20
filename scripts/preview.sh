#!/usr/bin/env bash

duration=$1

if [ $# -ne 1 ]; then
	duration=10
fi

sudo plymouthd
sudo plymouth --show-splash

for ((i=0; i<duration; i++)); do
    plymouth --update="Update message $I"
    sleep 1
done

plymouth quit
