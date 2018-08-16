
#CONFIGURATION
source ~/personal_config/.bashrc
#source ~/personal_config/.aliases

#ALIASES
alias ll='ls -lahG'
alias sp='source ~/.profile'
alias rv='rbenv'
alias pv='pyenv'
alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias secrets='bundle exec secrets'

#TOOLS

#GIT ALIASES
alias git=hub  # brew install hub
alias co='git checkout'
alias st='git status'
alias pl='git pull origin'
alias int='git checkout integration'
alias psef='ps -ef | grep -v System | grep -v Google | grep -v Appli'

if [ -f ~/personal_config/.git-completion.bash ]; then
  source ~/personal_config/.git-completion.bash
fi

boss(){
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
alias b='boss'


alias oo='ssh -i ~/.ssh/oo-staging-keypair.pem ubuntu@35.164.209.216'


