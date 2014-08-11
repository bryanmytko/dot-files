alias bx='bundle exec'
alias tmuxn='tmux new-session -s'
alias tmuxc=tmuxc
alias pgstart='postgres -D /usr/local/var/postgres'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

tmuxc(){
  if [ -z "$1" ]
    then
      echo 'You need to set a session name'
      return
  fi
  if [ -f ~/.tmux-$1 ]
  then
    sh ~/.tmux-$1
  else
    echo "There ain't no config file for $1."
  fi
}

## Prompt
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
PS1="\[\e[1;33m\]\w\[\e[0;39m\]\n\[\e[1;32m\]\u\[\e[0;39m\]\[\e[0;39m\]\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\]\[\e[0;39m\] "
