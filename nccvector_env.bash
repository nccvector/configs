#!/bin/bash -i

## Bashrc source, view, edit
alias src='source ~/.bashrc'   # Source bashrc
alias erc='nvim ~/.bashrc'    # Edit bashrc

## jetbrains
alias pyc='nohup ~/pycharm/bin/pycharm.sh &'
alias cli='nohup ~/clion/bin/clion.sh &'

## Rip grep
alias rgf='rg --files'
alias rgfg='rg --files | rg -i'

## Scratch buffer
alias scratch='nvim ~/.scratch'

## 
alias cls='clear'

## Tmux by default
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

