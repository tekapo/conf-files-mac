export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$PATH
export PATH=/Users/Tai/.wp-cli/bin:$PATH
# export CDPATH=~/Dropbox/vhosts/www_hyperion/wp_stable_ja/:~/Dropbox/vhosts/www_hyperion/
export HISTSIZE=5000
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

alias startweb='sh ~/Dropbox/Scripts/mamp_start.sh'
alias stopweb='sh ~/Dropbox/Scripts/mamp_stop.sh'
alias cdwps='cd ~/Dropbox/vhosts/www_hyperion/wp_stable_ja/'
alias ..='cd ..'
alias bud='brew update'
alias bug='brew upgrade'
alias wpcliup='cd ~/.composer; php composer.phar update'
alias wpinst='sh ~/Dropbox/vhosts/sh/install_wp_with_wpcli.sh'

# Composer scripts
# PATH=$HOME/.composer/bin:$PATH

# WP-CLI completions
source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash

