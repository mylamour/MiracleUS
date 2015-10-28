#!/bin/bash
#
# ChinaOpen 2008 sample start script for 3D Simulation Competitions
#
export LD_LIBRARY_PATH=.
AGENT_BINARY=strive3d


#killall -9 $AGENT_BINARY

#./$AGENT_BINARY --host=$1 -u=1 > stdout1 2> stderr1 &

#sleep 1

./$AGENT_BINARY --host=$1 -u=2 > stdout2 2> stderr2 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=3 > stdout3 2> stderr3 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=4 > stdout4 2> stderr4 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=5 > stdout5 2> stderr5 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=6 > stdout6 2> stderr6 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=7 > stdout7 2> stderr7 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=8 > stdout8 2> stderr8 &

#sleep 1

#./$AGENT_BINARY --host=$1 -u=9 > stdout9 2> stderr9 &
