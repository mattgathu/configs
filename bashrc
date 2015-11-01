#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias axel='axel -n 20 -a'
eval $(dircolors -b)

PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[0;34m\]\w\[\e[m\] \[\e[0;32m\]\$\[\e[m\] \[\e[1;37m\]'

alias grep='grep --color=auto'

export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
export LESS_TERMCAP_me=$(printf '\e[0m')
export LESS_TERMCAP_se=$(printf '\e[0m')
export LESS_TERMCAP_ue=$(printf '\e[0m')
export LESS_TERMCAP_mb=$(printf '\e[1;32m')
export LESS_TERMCAP_md=$(printf '\e[1;34m')
export LESS_TERMCAP_us=$(printf '\e[1;32m')
export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR="vim"

# pacman alias
alias pacupg='sudo pacman -Syu'     # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacin='sudo pacman -S'        # Install specific package(s) from the repositories
alias pacrem='sudo pacman -Rns'     # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias refreshmirrors='sudo reflector -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist'
alias newpost='rake posts:create'   # format: newpost "the post title" categoryname 2013-12-07

# put rubygem in path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# alias dj
alias dj='cd ~/Projects/veritza/veritza/scrapers'
