if [ -z "$1" ]; then
	host="127.0.0.1"
else
	host="$1"
fi

AGENT_BINARY="gdut2013512"
BINARY_DIR="./"
NUM_PLAYERS=11

killall -9 "$AGENT_BINARY" &> /dev/null
for ((i=1;i<=$NUM_PLAYERS;i++)); do
	echo "Running agent No. $i"
	"$BINARY_DIR$AGENT_BINARY" $host > /dev/null &
	sleep 2
done
