# PATH
set -x PATH ~/bin $PATH

# Directories
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias desk 'cd ~/Desktop'

# Git
alias g 'git'
alias ga "git add"
alias gc "git commit"
alias gb "git branch"
alias gp "git push"
alias gb "git branch"

alias ginit "git commit -m 'initial commit' --allow-empty"
alias gstash "git stash pop stash@(0)"
alias m "git checkout master"
alias mp "git checkout master && git pull"
alias uncommit "git log -1 && git reset HEAD^1"
alias amend 'git commit --amend'

# tig
alias s 'tig status'
alias t 'tig'

# ディレクトリ確認
alias la 'ls -a'

# rails
alias be 'bundle exec'
alias rs 'rails s'
alias rc 'rails c'

# Network Related
alias ips "ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"


# ctr + r (検索履歴表示)
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
