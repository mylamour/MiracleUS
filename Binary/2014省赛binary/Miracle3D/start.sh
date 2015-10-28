#!/bin/bash
#
# RoboCup 2011 sample start script for 3D soccer simulation
#
AGENT_BINARY="Miracle3D"
BINARY_DIR="./"
NUM_PLAYERS=11
#killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=1;i<=$NUM_PLAYERS;i++)); do
echo "Running agent No. $i"
#"$BINARY_DIR/$AGENT_BINARY"  > out$i  &
"$BINARY_DIR/$AGENT_BINARY" --unum=$i -h $i >/dev/null 2>&1 &
sleep 2
done

