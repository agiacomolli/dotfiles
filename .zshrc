eval "$(direnv hook zsh)"

export CLICOLOR=1
export GPG_TTY=$(tty)

export GREP_OPTIONS="--color=auto"

autoload -Uz colors && colors
autoload -Uz compinit && compinit

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%B%F{green}%n@%m%f:%F{blue}%~%f %b%F{red}${vcs_info_msg_0_}%f$ '

