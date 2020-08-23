#!/bin/bash
filename=$1
seconds=$2

timeNow=$(date +%s)

echo "Kjører filkontroll for $1 hvert $2 sekund"

if [ -f "$filename" ]; then
    # Filen ble slettet / Filen ble endret
    while sleep $seconds
    do
        if [ ! -f "$filename" ]; then
            echo "Filen $1 ble slettet."
            exit
        fi

        if [ $(stat -f %m $filename) -gt $timeNow ]; then
            echo "Filen $1 ble endret."
            exit
        fi
    done

else
    # Filen ble opprettet
    while sleep $seconds
    do
        if [ -f "$filename" ]; then
            echo "Filen $1 ble opprettet."
            exit
        fi
    done
fi