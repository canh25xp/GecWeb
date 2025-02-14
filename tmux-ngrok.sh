#!/bin/bash

SESSION_NAME="GecWeb-ngrok"

# windows 1
tmux new-session -d -s $SESSION_NAME -n api -c "$(pwd)/api"
tmux send-keys -t $SESSION_NAME:1 "conda activate gec-api ; clear" C-m
tmux send-keys -t $SESSION_NAME:1 "python api.py" C-m

# windows 2
tmux new-window -t $SESSION_NAME -n web -c "$(pwd)/web"
tmux send-keys -t $SESSION_NAME:2 "conda activate gec-web ; clear" C-m
tmux send-keys -t $SESSION_NAME:2 "python app.py" C-m

# windows 3
tmux new-window -t $SESSION_NAME -n ngrok -c "$HOME"
tmux send-keys -t $SESSION_NAME:3 "ngrok http --url=gratefully-wise-redfish.ngrok-free.app 4000" C-m
# tmux send-keys -t $SESSION_NAME:3 "ngrok http 4000" C-m

# tmux select-window -t $SESSION_NAME:3

tmux attach -t $SESSION_NAME
