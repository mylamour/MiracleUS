#!/bin/bash
#
# sample start script for 3D soccer simulation
#

AGENT_BINARY="YuShan3D"
BINARY_DIR="./"
killall -9 "$AGENT_BINARY" &> /dev/null
export LD_LIBRARY_PATH=./libs/:$LD_LIBRARY_PATH;
echo "Running agent No. 1"
"$BINARY_DIR/$AGENT_BINARY" -s $1 -t YuShan3D -u 1 > /dev/null 2> /dev/null&
sleep 1.0
