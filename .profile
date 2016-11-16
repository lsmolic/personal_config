###################################################################################
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
drwxr-xr-x    3 lucassmolic  staff   102B Jan 12  2015 .wireshark
drwxr-xr-x    7 lucassmolic  staff   238B Jan 12  2015 .wireshark-etc
#CONFIGURATION
source ~/.bashrc
source ~/.aliases

#ALIASES
alias ll='ls -lahG'
alias sp='source ~/.profile'
alias rv='rbenv'
alias pv='pyenv'
alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

#TOOLS

#GIT ALIASES
alias git=hub  # brew install hub
alias co='git checkout'
alias st='git status'
alias pl='git pull origin'
alias int='git checkout integration'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

b(){
  clear;
  LINE=""
  i=0
  while [ true ]
  do
                j=$i+100
        bin1=$(echo "obase=2; ibase=10; $i" | bc)
        bin2=$(echo "obase=2; ibase=10; $j" | bc)
        #LINE="$bin1 $bin2"
                printf "%s%s" "$bin1" "$bin2"
                i=$i+1
  done
}
