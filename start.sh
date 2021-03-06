
#!/bin/bash
CONFIG_FILE="./ServerConfig.toml" #Leave these as they are unless you have a reason to change them.
SERVER_BINARY="./BeamMP-Server-linux" #Leave these as they are unless you have a reason to change them.

TARGET_KEY="Map"

# Add maps to an array
array[0]="/levels/gridmap_v2/info.json"
array[1]="/levels/utah/info.json"

# Set config value
size=${#array[@]}
index=$(($RANDOM % $size)) #This is the maps index value
REPLACEMENTVALUE=${array[$index]}
sed -ir 's~^[#]*\s*Map =.*~Map = \x22'"$REPLACEMENTVALUE"'\x22~' $CONFIG_FILE

# Relay the map that was set
echo "Map has been set too ${REPLACEMENTVALUE}"
echo "Starting..."

# Start script using TMUX on Linux, in order to use screen you must modify this command
tmux new-session -d -s bmp $SERVER_BINARY

# Default Script - tmux new-session -d -s bmp './BeamMP-Server-linux'