#!/bin/bash
#
# Start Script for 3D Soccer Simulation
# Penalty Keeper
#

AGENT_BINARY="SZ"
BINARY_DIR="./"

#killall -9 "$AGENT_BINARY" > /dev/null &

"$BINARY_DIR/$AGENT_BINARY" --host=$1 --penaltykeeper > /dev/null 2> /dev/null &
