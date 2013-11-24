export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$PATH

# wp-cli path
export PATH=/Users/Tai/.wp-cli/bin:$PATH

# WP-CLI completions
source $HOME/.wp-cli/vendor/wp-cli/wp-cli/utils/wp-completion.bash

# Git completion
source /usr/local/Cellar/git/1.8.4.2/etc/bash_completion.d/git-completion.bash

#Git prompt
source /usr/local/Cellar/git/1.8.4.2/etc/bash_completion.d/git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#aliases
alias startweb='sh ~/Dropbox/Scripts/mamp_start.sh'
alias stopweb='sh ~/Dropbox/Scripts/mamp_stop.sh'
alias bud='brew update'
alias bug='brew upgrade'
alias wpinst='sh ~/Dropbox/vhosts/sh/install_wp_with_wpcli.sh'

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac