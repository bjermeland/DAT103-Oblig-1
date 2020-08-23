#!/bin/bash
for file in $@; do ./filkontroll.sh $file 60 &
done