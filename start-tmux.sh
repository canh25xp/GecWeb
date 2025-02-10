#!/bin/bash

SESSION_NAME="thesis"

tmux new-session -d -s $SESSION_NAME -n GecWeb -c "$(pwd)"

tmux new-window -t $SESSION_NAME -n gec-api -c "$(pwd)/api"
tmux send-keys -t $SESSION_NAME:2 "conda activate gec-api" C-m

tmux new-window -t $SESSION_NAME -n gec-web -c "$(pwd)/web"
tmux send-keys -t $SESSION_NAME:3 "conda activate gec-web" C-m

tmux new-window -t $SESSION_NAME -n thesis -c "$(pwd)/report"

tmux select-window -t $SESSION_NAME:1

tmux attach -t $SESSION_NAME
