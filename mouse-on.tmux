#!/bin/sh

TMUX_VERSION="$(tmux -V | grep -oE '[^ ]+$')"

if [ $(echo "$TMUX_VERSION" |  awk '{ print ($1 >= 2.1) ? "0" : "" }') ] ; then
	tmux set-option -g mouse on
elif [ $(echo "$TMUX_VERSION" |  awk '{ print ($1 >= 1.9) ? "0" : "" }') ] ; then
	tmux set-option -g mode-mouse on
	tmux set-option -g mouse-resize-pane on
	tmux set-option -g mouse-select-pane on
	tmux set-option -g mouse-select-window on
fi
