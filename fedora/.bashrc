export LANG=en_US.UTF-8
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export CLICOLOR=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
unset command_not_found_handle
export EDITOR='vim'
set -o vi
alias ls='ls --color'
alias ll='ls -al'
alias vi='vim'
alias py='python3'
alias ipy='ipython3'
