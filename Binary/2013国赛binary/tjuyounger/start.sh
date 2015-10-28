#!/bin/bash
export JAVA_HOME=$PWD/jre/
export PATH=$JAVA_HOME/bin:$PATH

TEAMNAME=TJUYounger
PLAYERS=11

if [ $# -ne 1 ]; then
	echo "Usage: $0 <Server IP>"
	exit 1
fi


./startCommon.sh $1 $TEAMNAME $PLAYERS
