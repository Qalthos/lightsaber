#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
HISTFILE=~/.zsh/history
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY
setopt histignorealldups
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

export EDITOR=vim
# But use emacs-style keys
bindkey -e
source /etc/profile
source ~/.zsh/aliases
source ~/.zsh/prompt
if [ $OSTYPE != 'cygwin' ]; then
    source ~/.zsh/keyboard
fi

export PATH=$PATH:~/bin
source distro_check.sh

# Set up virtualenv & do distro-specific stuff
venv=virtualenvwrapper.sh
WORKON_HOME=~/.local/virtualenvs-$DISTRO
PIP_REQUIRE_VIRTUALENV=1
case $DISTRO in
    "Arch")
        eval "$(hub alias -s)"
        export VIRTUALENV_PYTHON=python2
        eval "$(fasd --init auto)"
        alias j="fasd_cd -d"
        alias v="f -e vim"
        ;;
    "Ubuntu" | "Debian")
        venv=/etc/bash_completion.d/virtualenvwrapper
        source /usr/share/autojump/autojump.zsh
        ;;
esac
if hash $venv 2>/dev/null; then
    source $venv
fi
echo $DISTRO

if hash fortune 2>/dev/null; then
    fortune -ac
fi
