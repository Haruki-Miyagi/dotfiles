# PATH
export PATH=$HOME/.rbenv/bin:$PATH

# ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# git
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
# export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias desk='cd ~/Desktop'

# Git
alias g='git'
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gp="git push"
alias gb="git branch"

alias ginit="git commit -m 'initial commit' --allow-empty"
alias gstash="git stash pop stash@{0}"
alias m="git checkout master"
alias mp="git checkout master && git pull"
alias uncommit="git log -1 && git reset HEAD^1"
alias amend='git commit --amend'

# tig
alias s='tig status'
alias t='tig'

# ディレクトリ確認
alias la='ls -a'

# rails
alias be='bundle exec'
alias rs='rails s'
alias rc='rails c'

# Network Related
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"
