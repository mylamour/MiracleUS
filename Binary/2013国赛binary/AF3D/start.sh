#!/bin/bash
#
# Robocup 2013 sample start script for 3D soccer simulation
#
#export LD_LIBRARY_PATH==$LD_LIBRARY_PATH:aflib/

AGENT_BINARY="AF3D_BINARY"
BINARY_DIR="./"
NUM_PLAYERS=11
$IPAddress

if [ -z $1 ] ; then
{
	IPAddress=127.0.0.1
	echo "please set host"
}
else
{
	IPAddress=$1
}
fi

killall -9 "$AGENT_BINARY" &> /dev/null

for ((i=1;i<=$NUM_PLAYERS;i++)); do
   echo "Running $AGENT_BINARY agent No. $i"
  "$BINARY_DIR$AGENT_BINARY" --host=$IPAddress --Unum=$i --team='AF3D'  > ./log/stdout$i.out 2> ./log/stderr$i.err &
sleep 1
done

