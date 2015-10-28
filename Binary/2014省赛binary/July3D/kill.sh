#!/bin/bash
#
# RoboCup 2011 sample start script for 3D soccer simulation
#
AGENT_BINARY="July3D"
BINARY_DIR="./"
NUM_PLAYERS=11
killall -9 "$AGENT_BINARY" &> /dev/null
