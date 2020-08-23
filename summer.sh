#!/bin/bash
echo "Skriv inn tall, avslutt med CTRL+D"

SUM=0
while read tall; do SUM=$((SUM+tall)); done

echo "Sum = $SUM"