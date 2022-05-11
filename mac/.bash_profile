export LANG=en_US.UTF-8
case $- in *i*)
  [ -z "$TMUX" ] && exec tmux
esac
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PS1='\u@:\[\e[33m\]\w\[\e[0m\]\$ '
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export EDITOR='vim'
set -o vi
set -o ignoreeof
alias ls='ls -G'
alias vi='vi'
alias py='python3'
alias ipy='ipython3'
alias textedit='open -a TextEdit'
