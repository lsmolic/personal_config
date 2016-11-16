current_dir(){
    pwd
}
export PS1="\u@\h::\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \n$ "

####################
#       PATH       #
####################

PATH=""

###  POSTGRES
###################################################################################dd
# PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
# PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

###  MYSQL
###################################################################################dd
PATH="/usr/local/mysql/bin:$PATH"
PATH="/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
#PATH="/usr/local/packer:$PATH"
#PATH="/usr/local/share/npm/lib/node_modules:$PATH"

# C COMPILER
###################################################################################
#CPATH=/usr/local/Cellar:$CPATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

###  PYTHON   #####################################################################
###################################################################################
export PYTHONPATH=/usr/local/Cellar:$PYTHONPATH
# VERSIONER_PYTHON_PREFER_64_BIT=no
# VERSIONER_PYTHON_PREFER_32_BIT=yes
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

###   RUBY   ######################################################################
###################################################################################
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
