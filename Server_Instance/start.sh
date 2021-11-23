#! /bin/bash
echo "Starting server $1..."
echo "To access the server console use this command:"
echo "screen -xR $1"
echo ""
echo "To deattach from the screen session press ctrl+A then press D"
screen -dmS $1 java -Xmx6G -Xms4G -jar server.jar nogui
