#!/bin/bash

AGENT_BINARY="HS"
PT_GOALKEEPER=1  #守门员
PT_LEFT_BACK=2  #左后卫
PT_RIGHT_BACK=3  #右后卫
PT_BACK=4  #后卫
PT_SWEEPER=5  #清道夫 拖后中卫
PT_LEFT_MIDFIELDER=6  #左前卫
PT_MIDFIELDER=7  #前卫
PT_RIGTH_MIDFIELDER=8  #右前卫
PT_DEFENDING_MIDFIELDER=9  #防守型前卫，前腰
PT_LEFT_FORWARDER=10 #左前锋
PT_RIGHT_FORWARDER=11 #右前锋  
# killall -9 $AGENT_BINARY

"./$AGENT_BINARY" --unum $PT_GOALKEEPER --host=$1 &> /dev/null &
sleep 5
"./$AGENT_BINARY" --unum $PT_LEFT_BACK --host=$1 &> /dev/null & 
sleep 1
# "./$AGENT_BINARY" --unum $PT_RIGHT_BACK --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_BACK --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_SWEEPER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_LEFT_MIDFIELDER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_MIDFIELDER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_RIGTH_MIDFIELDER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_DEFENDING_MIDFIELDER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_LEFT_FORWARDER --host=$1> /dev/null &
# sleep 1
# "./$AGENT_BINARY" --unum $PT_RIGHT_FORWARDER --host=$1> /dev/null
