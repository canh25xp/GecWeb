#!/bin/bash

SESSION_NAME="thesis"

# windows 1
tmux new-session -d -s $SESSION_NAME -n GecWeb -c "$(pwd)"

# windows 2
tmux new-window -t $SESSION_NAME -n gec-api -c "$(pwd)/api"
tmux send-keys -t $SESSION_NAME:2 "conda activate gec-api ; clear" C-m

# windows 3
tmux new-window -t $SESSION_NAME -n gec-web -c "$(pwd)/web"
tmux send-keys -t $SESSION_NAME:3 "conda activate gec-web ; clear" C-m

# windows 4
tmux new-window -t $SESSION_NAME -n thesis -c "$(pwd)/report"

tmux select-window -t $SESSION_NAME:1

tmux attach -t $SESSION_NAME
