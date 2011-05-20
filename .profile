 export PATH=/usr/local/bin:$PATH
 export PATH=/Applications/MAMP/bin/php5.2/bin:$PATH
 export PATH=/Applications/MAMP/Library/bin:$PATH
export PATH=/opt/local/lib/postgresql83/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
#Git specific alises
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

#Specific alises for walltowall work
alias wwcms='cd ~/Sites/wwcms.new'
alias 0002='cd ~/Sites/wwcms.new/frontends/0002_WTW_design'
alias 1927='cd ~/Sites/wwcms.new/frontends/1927_CMU'
alias 1724='cd ~/Sites/wwcms.new/frontends/1724_MAG'
alias 1956='cd ~/Sites/wwcms.new/frontends/1956_GTY'
alias 1922='cd ~/Sites/wwcms.new/frontends/1922_AMN'
alias 2064='cd ~/Sites/wwcms.new/frontends/2064_FOR'
alias 1826='cd ~/Sites/wwcms.new/frontends/1826_LAS'
alias front='cd ~/Sites/wwcms.new/frontends/'
alias gpom='git push origin master'
##
# Your previous /Users/scottwerner/.profile file was backed up as /Users/scottwerner/.profile.macports-saved_2010-11-19_at_09:50:20
##

# MacPorts Installer addition on 2010-11-19_at_09:50:20: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.
source ~/.rake_cap_bash_autocomplete.sh

#parse_git_branch() {
	#git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (.*)/1/'
#}
parse_current_frontend(){
	cat ~/Sites/wwcms.new/frontend
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE='\e[1;37m'

source /usr/local/git/contrib/completion/git-completion.bash
PS1="$RED**\$(parse_current_frontend)** \w$YELLOW"
PS1=$PS1:'$(__git_ps1 " (%s)")'
PS1=$PS1:"$GREEN\$ $WHITE"

