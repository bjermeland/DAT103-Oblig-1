#!/bin/bash
for i in $(seq $1); do echo $2; done

# alternativ måte istedenfor å bruke ekstern kommando (seq)
# for (( i=0; i<$1; i++ )); do echo $2; done
# men for et så smått program, er det ikke noe problem å bruke seq.