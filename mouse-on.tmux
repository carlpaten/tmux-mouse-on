#!/bin/sh

TMUX_VERSION="$(tmux -V | cut --delimiter=" " --fields=2)"

if [ $(echo "$TMUX_VERSION <= 2.1" | bc) ] ; then
	tmux set-option mouse on
elif [ $(echo "$TMUX_VERSION <= 1.9" | bc) ] ; then
	tmux set-option mode-mouse on
	tmux set-option mouse-resize-pane on
	tmux set-option mouse-select-pane on
	tmux set-option mouse-select-window on
fi
