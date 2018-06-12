###
### Aliases
###

alias vim="vimx" # vim with clipboard support
alias yt="mpsyt"
alias jup="stack exec jupyter -- notebook"
alias httpserver8080="python3 -m http.server 8000"

alias ga="git add"
alias gs="git status"
alias gr="git reset"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git commit"
alias gpm="git push origin master"
alias gl="git log"

setopt auto_pushd # pushd behavior with cd
setopt pushd_ignore_dups
setopt pushd_silent

###
### Bindings
###

TERM=xterm-256color

bindkey -v          # vi mode
export KEYTIMEOUT=1 # remove the delay after hitting <ESC>

bindkey "^?" backward-delete-char
bindkey -M vicmd '^[[3~' delete-char
bindkey -M viins '^[[3~' delete-char

bindkey "^[[5~" beginning-of-line
bindkey "^[[6~" end-of-line

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

###
### History
###

HISTFILE=~/.histfile
HISTSIZE=200000
SAVEHIST=200000
HISTORY_IGNORE="ls:pwd:exit:history*"

setopt share_history      # share history between sessions
setopt inc_append_history # don't wait for the shell to exit before writing to HISTFILE
setopt hist_save_no_dups  # don't save duplicate entries

###
### Completion
###

autoload -Uz compinit && compinit

setopt extended_glob

zstyle ':completion:*' menu select
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' file-sort modification

fpath=(~/.zsh/zsh-completions/src $fpath)

###
### Prompt
###

autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%{$fg[blue]%} %b %m"
zstyle ':vcs_info:git*' actionformats "%{$fg[blue]%} %b: %a %m"

# https://github.com/johan/zsh/blob/master/Misc/vcs_info-examples
zstyle ':vcs_info:git*+set-message:*' hooks git-st
function +vi-git-st() {
    local ahead behind
    local -a gitstatus

    ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
    (( $ahead )) && gitstatus+=( "▲ ${ahead}" )

    behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
    (( $behind )) && gitstatus+=( "▼ ${behind}" )

    hook_com[misc]+=${(j: :)gitstatus}
}

precmd() { vcs_info }

function zle-line-init zle-keymap-select {
  vi_mode_color="${${KEYMAP/vicmd/green}/(main|viins)/magenta}"
  mode_arrow="%{$fg[${vi_mode_color}]%}⤷ %{$reset_color%}"

  user="%{$fg[magenta]%}%n"
  cwd="%{$fg[cyan]%}(%~)"
  retcode="%(?..%{$fg[red]%}[%?] )"

  PS1="${user} ${cwd}${vcs_info_msg_0_}${retcode}"$'\n'${mode_arrow}

  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

###
### asdf
###

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
PATH=$PATH:~/.asdf/installs/nodejs/8.11.2/.npm/bin

###
### Plugins
###

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
