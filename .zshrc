# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd nomatch #extendedglob
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gabriel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

PROMPT='%~%f > '
alias ls="exa --color=never --icons"
alias bat="bat --style=auto"
alias clock="tty-clock -c -C 7 -D"
