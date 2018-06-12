# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Vim with clipboard support
alias vim="vimx"

alias yt="mpsyt"

alias jup="stack exec jupyter -- notebook"

# Git shorthands
alias ga="git add"
alias gs="git status"
alias gr="git reset"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git commit"
alias gpm="git push origin master"
alias gl="git log"

# PS1

function _set_ps1() {
  local ret_code=$?

  local c_reset="\[\e[m\]"
  
  local c_magenta="\[\e[35m\]"
  local c_red="\[\e[31m\]"
  local c_cyan="\[\e[36m\]"
  
  if [ $ret_code -ne 0 ]; then
    local ps1_ret=" ${c_red}[\$?]${c_reset}"
  fi

  local ps1_user="${c_magenta}\u${c_reset}"
  local ps1_cwd="${c_cyan}[\w]${c_reset}"
  local ps1_cmd_arrow="${c_magenta}⤷${c_reset}"

  export PS1="${ps1_user} ${ps1_cwd}${ps1_ret}\n${ps1_cmd_arrow} "
}

# Append to .bash_history instead of overwriting it
shopt -s histappend
# Save multi-liners in a single entry
shopt -s cmdhist
# Keep ~lots of~ history
HISTFILESIZE=500000
HISTSIZE=500000
# Don't store duplicate entries
HISTCONTROL="erasedups:ignoreboth"
# Don't keep useless entries around
HISTIGNORE="ls:pwd:exit:history"
# Record each new command instead of waiting for the shell to exit
PROMPT_COMMAND="_set_ps1; history -a"

# http://codeinthehole.com/tips/the-most-important-command-line-tip-incremental-history-searching-with-inputrc
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

# Initialize asdf (erlang, nodejs)

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
