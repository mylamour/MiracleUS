#!/bin/bash


CLSPTH=""
FLAG=0
for fn in `ls *.jar`
do
	if [ $FLAG -eq 0 ];
	then
		CLSPTH="./$fn"
		FLAG=1
	else
		CLSPTH=$CLSPTH:"./$fn"
	fi
done

if [ $# -ne 3 ]; then
	echo "Usage: $0 <Server IP> <Team name> <Players>"
	exit 1
fi

SERVER_IP=$1
TEAM_NAME=$2
PLAYERS=$3
SERVER_PORT=3100
LOGLEVEL=severe

for ((NUM=1; NUM<=$PLAYERS; NUM++)); do
	java -cp $CLSPTH edu.tju.younger.agent.BasicAgent g $TEAM_NAME $NUM $SERVER_IP $SERVER_PORT $LOGLEVEL &
	sleep 2
done

