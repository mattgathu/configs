# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias axel='axel -n 20 -a'
alias grep='grep -i'

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
export PROJECT_HOME=$HOME/Projects
export EDITOR="nvim"
export LANG="en_US.UTF-8"
export PATH=$PATH:/Users/matthewgathu/.cargo/bin

alias d='docker'
alias git='hub'
alias vim='nvim'
alias c='cargo'
alias ls='ls -G'
alias l='ls -G'
alias less='vimpager'
alias gclone='git clone'
alias gcheckout='git checkout'
alias gpull='git pull'
alias gp='git pull'
alias gpush='git push'
alias gs='git status .'
alias gtag='git tag'
alias gadd='git add'
alias glog='tig'
alias gbranch='git branch'
alias greset='git reset'
alias gcommit='git commit -S'
alias grebase='git rebase'
alias gc='git commit'
alias gpr='git pull-request'
alias gremote='git remote'
alias gstash='git stash'
alias gdiff='git diff'
alias gmerge='git merge'
alias gfetch='git fetch'
alias dc='docker-compose'
alias tree='tree -C -L 2'
alias t='tree -C -L 2'
alias pyradio='pyradio -p 3'
alias clippy='cargo +nightly clippy'
alias cnightly='cargo +nightly'
alias gem_install='gem install --user-install'

# export VIMPAGER_RC=$HOME/.vimrc
export PAGER=less
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
source /usr/local/bin/virtualenvwrapper.sh

export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/brew/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$HOME/opt/gcc-arm-none-eabi-7-2017-q4-major/bin:$PATH"
export PATH="~/Library/Python/3.6/bin:$PATH"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export RUST_BACKTRACE=1

# powerline
export THEME=$HOME/.bash/themes/agnoster-bash/agnoster.bash
if [[ -f $THEME ]]; then
    export DEFAULT_USER=`whoami`
    source $THEME
fi

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"


source $HOME/.cargo/env
