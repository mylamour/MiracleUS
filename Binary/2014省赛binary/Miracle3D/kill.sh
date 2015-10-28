#!/bin/bash
#
# RoboCup 2014 sample start script for 3D soccer simulation
#
AGENT_BINARY="Miracle3D"
BINARY_DIR="./"
NUM_PLAYERS=11
killall -9 "$AGENT_BINARY" &> /dev/null
