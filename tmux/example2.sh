#!/bin/sh
guake -r "cobertura_api"
tmux new-session -s 'cobertura_api' \; \
    split-window -v -p 60 \; \
    select-pane -t 0 \; \
    send-keys "pyenv activate cobertura_api" C-m \; \
    send-keys "cdproject" C-m \; \
    send-keys "python manage.py runserver" C-m \; \
    split-window -h -p 67 \; \
    send-keys "pyenv activate cobertura_api" C-m \; \
    send-keys "cdproject" C-m \; \
    send-keys "code ." C-m \; \
    select-pane -t 2 \; \
    send-keys "pyenv activate cobertura_api" C-m \; \
    send-keys "cdproject" C-m \; \
    send-keys "python manage.py shell_plus" C-m \;