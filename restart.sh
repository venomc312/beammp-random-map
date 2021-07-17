#!/bin/bash
tmux kill-session -t bmp
echo "Killed previous beammp windows, continuing in 5 seconds."
sleep 5

bash ./start.sh
