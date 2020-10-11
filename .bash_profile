eval "$(rbenv init -)"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias b="bundle exec "

export EDITOR=code

server() {
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}

export PATH="$PATH:`yarn global bin`"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

eval "$(pyenv virtualenv-init -)"
