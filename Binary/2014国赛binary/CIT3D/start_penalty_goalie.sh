#!/bin/bash
#
# Robocup 2012 sample start script for 3D soccer simulation
#
#export LD_LIBRARY_PATH==$LD_LIBRARY_PATH:citlib/

AGENT_BINARY="CIT3D_binary"
BINARY_DIR="./"
NUM_PLAYERS=1
killall -9 "$AGENT_BINARY" &> /dev/null
$IPAddress

if [ -z $1 ] ; then
{
	echo "please set host"
	IPAddress=127.0.0.1
}
else
{
	IPAddress=$1
}
fi
for ((i=1;i<=$NUM_PLAYERS;i++)); do
    echo "Running $AGENT_BINARY agent No. $i"
    "$BINARY_DIR$AGENT_BINARY" --host=$IPAddress --Unum=$i --team='CIT3D'> ./log/goailestdout$i.out 2> ./log/goailestderr.err$i &
sleep 1
done

