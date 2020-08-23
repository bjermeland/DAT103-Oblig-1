#!/bin/bash
for file in $@; do ./filkontroll.sh $file 8 &
done