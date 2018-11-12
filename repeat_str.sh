#!/bin/bash

FILENAME=$1
STRING=$2
COUNT=$3

if [ ! -f "$FILENAME" ]
    then
        touch $FILENAME
        for (( i=1; i <= $COUNT; i++ ))
        do
            echo $STRING >> $FILENAME
        done
    else
        echo "error: file $FILENAME already exist"
fi
