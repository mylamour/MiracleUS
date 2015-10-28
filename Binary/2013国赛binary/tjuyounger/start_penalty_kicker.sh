#!/bin/bash
export JAVA_HOME=$PWD/jre/
export PATH=$JAVA_HOME/bin:$PATH
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

nohup java -cp $CLSPTH edu.tju.younger.agent.BasicAgent g "TJUYounger" 9 $1 3100 severe 64 5 1>/dev/null 2>/dev/null &