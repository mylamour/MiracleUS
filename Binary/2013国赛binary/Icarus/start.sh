#!/bin/bash
#
# RoboCup China Open 2012 sample start script for 3D soccer simulation
#
AGENT_BINARY="Icarus3D"
BINARY_DIR="./"
NUM_PLAYERS=11

killall -9 "$AGENT_BINARY" &> /dev/null

for ((i=1;i<=$NUM_PLAYERS;i++)); do
    echo "Running agent No. $i"
    "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i > /dev/null$i 2> /dev/null$i &
    sleep 2
done