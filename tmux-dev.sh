#!/bin/bash

SESSION_NAME="GecWeb-dev"

# windows 1
tmux new-session -d -s $SESSION_NAME -n GecWeb -c "$(pwd)"

# windows 2
tmux new-window -t $SESSION_NAME -n api -c "$(pwd)/api"
tmux send-keys -t $SESSION_NAME:2 "conda activate gec-api ; clear" C-m

# windows 3
tmux new-window -t $SESSION_NAME -n web -c "$(pwd)/web"
tmux send-keys -t $SESSION_NAME:3 "conda activate gec-web ; clear" C-m

# windows 4
tmux new-window -t $SESSION_NAME -n demo -c "$(pwd)/demo"
tmux send-keys -t $SESSION_NAME:4 "conda activate gec-demo ; clear" C-m

# windows 5
tmux new-window -t $SESSION_NAME -n report -c "$(pwd)/report"

tmux select-window -t $SESSION_NAME:1

tmux attach -t $SESSION_NAME
