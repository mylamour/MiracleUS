#!/bin/bash
#
# Robocup 2013 sample start script for 3D soccer simulation
#
#export LD_LIBRARY_PATH==$LD_LIBRARY_PATH:aflib/

AGENT_BINARY="AF3D_BINARY"
BINARY_DIR="./"
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
killall -9 "$AGENT_BINARY" &> /dev/null

echo "Running $AGENT_BINARY agent No.2"
       $BINARY_DIR$AGENT_BINARY  --host=$IPAddress   --Unum=2  --team="AF3D"     --striker> ./log/kickerstdout222.out 2> ./log/kickerstderr222.err &
  sleep 2


