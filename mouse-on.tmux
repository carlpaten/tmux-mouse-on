#!/bin/sh

TMUX_VERSION="$(tmux -V | cut --delimiter=" " --fields=2)"

if [ $(echo "$TMUX_VERSION <= 2.1" | bc) ] ; then
	tmux set-option -g mouse on
elif [ $(echo "$TMUX_VERSION <= 1.9" | bc) ] ; then
	tmux set-option -g mode-mouse on
	tmux set-option -g mouse-resize-pane on
	tmux set-option -g mouse-select-pane on
	tmux set-option -g mouse-select-window on
fi
