###  CONFIG TERMINAL
###################################################################################dd
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-color
export EDITOR="vi"

###  SSH-FORWARDING - because dumb
###################################################################################dd
ssh-add ~/.ssh/id_rsa &> /dev/null;

###  GIT
###################################################################################dd
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

format_git_branch() {
  BB=$(parse_git_branch)
  if [ -n "$BB" ]
  then
    echo "($BB)"
  fi
}

function current_dir(){
    pwd
}

export PS1="::\w\[\033[32m\] \$(format_git_branch)\[\033[00m\] \n$ "

####################
#       PATH       #
####################

PATH=""

### OPENSSL
export PATH="/usr/local/opt/openssl/bin:$PATH"

###  RBENV / PYENV
export PATH="/usr/local/Cellar:$PATH"


###  POSTGRES
###################################################################################dd
# PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
# PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

###  MYSQL
###################################################################################dd
#PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
#PATH="/usr/local/packer:$PATH"
#PATH="/usr/local/share/npm/lib/node_modules:$PATH"

# C COMPILER
###################################################################################
CPATH=/usr/local/Cellar:$CPATH
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

###  PYTHON   #####################################################################
###################################################################################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

export PYTHONPATH=/usr/local/Cellar:$PYTHONPATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi


###   RUBY   ######################################################################
###################################################################################
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### NVM
#######
export NVM_DIR="/Users/lucassmolic/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
