#!/bin/bash
#
# Robocup 2011 sample start script for 3D soccer simulation
#
export LD_LIBRARY_PATH==$LD_LIBRARY_PATH:./lib

AGENT_BINARY="kylinsky"
BINARY_DIR="./"
NUM_PLAYERS=11
#killall -9 "$AGENT_BINARY" &> /dev/null

   for ((i=1;i<=$NUM_PLAYERS;i++)); do
    echo "Running $AGENT_BINARY agent No. $i"
    "$BINARY_DIR$AGENT_BINARY" --host=$1 --Unum=$i > /dev/null 2> /dev/null &
sleep 1
done

