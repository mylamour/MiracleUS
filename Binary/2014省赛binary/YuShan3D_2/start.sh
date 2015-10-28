#!/bin/bash
#
# sample start script for 3D soccer simulation
#
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./libs
AGENT_BINARY="YuShan3D"
BINARY_DIR="./"
NUM_PLAYERS=11
#killall -9 "$AGENT_BINARY" &> /dev/null
export LD_LIBRARY_PATH=./libs/:$LD_LIBRARY_PATH;
for ((i=1;i<=$NUM_PLAYERS ;i++)); do
echo "Running agent No. $i"
"$BINARY_DIR/$AGENT_BINARY" -s 127.0.0.1 -t YuShan3D_2 -u $i > /dev/null 2> /dev/null&
sleep 1.0
done
