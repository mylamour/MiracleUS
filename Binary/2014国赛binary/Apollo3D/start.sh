#!/bin/bash
#
#RoboCup 2012 sample start script for 3D soccer simulation
#

AGENT_BINARY=apollo3d
BINARY_DIR="."
NUM_PLAYERS=11

export LD_LIBRARY_PATH=.
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:makelibs

#killall -9 "$AGENT_BINARY" &> /dev/null

for ((i=1;i<=$NUM_PLAYERS;i++)); do
    case $i in
       5 | 6)
                echo "Running agent No. $i -- Type 4"
                "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 4 > /dev/null 2> /dev/null &
                ;;
       8 | 9 )
               echo "Running agent No. $i -- Type 2"
               "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 2 > /dev/null 2> /dev/null &   
                ;;
       #4 | 5)
        #       echo "Running agent No. $i -- Type 2"
        #        "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 2 > /dev/null 2> /dev/null &
          #      ;;
       *)
              echo "Running agent No. $i -- Type 0"
                "$BINARY_DIR/$AGENT_BINARY" --host $1 --unum $i --type 0 > /dev/null 2> /dev/null &
                ;;
    esac
    sleep 1
done
