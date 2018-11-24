#CONFIGURATION
source ~/personal_config/.bashrc
source ~/personal_config/.aliases

# Important Stuff
# cd ~/Library/LaunchAgents/   --> where start up items are listed
# launchctl list 
# launchctl remove [service]
# list of previously removed: ~/personal_config/.launchagents


# HEROKU -- only here for reference
# heroku autocomplete --refresh-cache

if [ -f ~/personal_config/.git-completion.bash ]; then
  source ~/personal_config/.git-completion.bash
fi

if type brew 2&>/dev/null; then
  for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
    source "$completion_file"
  done
fi

