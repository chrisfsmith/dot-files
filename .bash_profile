#
# dot files
#
export DOT_FILES=~/Developer/projects/dot-files


#
# GIT
#
export GITHUB_USERNAME='ChrisAtBloom'
export BLOOM_GIT_SANDBOX='/Users/csmith/Developer/projects/bloom'
. /usr/local/etc/bash_completion.d/git-completion.bash


#
# Source bloom-dev-scripts
#
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/bitbucket-sandbox.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/bloom-logs.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/bloom-plugins.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/ctags.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/gradle.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/grep-colors.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/groovy-grails-switch.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/groovy-grails.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/java-home.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/ls-colors.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/markdown.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/mysql.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/prompt.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/rabbitmq.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/shauns-stuff.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/truecrypt-config-switch.sh
. $BLOOM_GIT_SANDBOX/dev_scripts/bash/vagrant.sh
#. $BLOOM_GIT_SANDBOX/dev_scripts/bash/vin_dev.sh


#
# prompt
#
export PS1='\n\e[0;32m\w$(gitmin_ps1)$RESET\n '

#
# history
#
export HISTCONTROL=ignoreboth:erasedups

#
# Groovy/Grails
#
export GRAILS_OPTS="-Xms2048m -Xmx2048m -XX:PermSize=128m -XX:MaxPermSize=1024m -server"
export GRADLE_OPTS="-Xmx2G -Xms2G -XX:NewSize=512m -XX:MaxNewSize=512m -XX:MaxPermSize=1G"
#export JAVA_OPTS="-Xmx2G -Xms2G -XX:NewSize=512m -XX:MaxNewSize=512m -XX:MaxPermSize=1G"


#
# MySQL
#
export MYSQL_HOME=/usr/local/mysql
alias mysqlstart='sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist'
alias mysqlstop='sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist'


#
# Miscellaneous aliases
#
alias bloom='cd $BLOOM_GIT_SANDBOX/'
alias bh='cd $BLOOM_GIT_SANDBOX/webapp_bloomhealth/bloomhealth'
alias bb='cd $BLOOM_GIT_SANDBOX/webapp_bhbo/bhbo'
alias bor='cd $BLOOM_GIT_SANDBOX/bloomhealth'
alias vm='cd $BLOOM_GIT_SANDBOX/provisioning/vagrant/vagrantmanager'

#
# Marks
#
. $DOT_FILES/marks/marks.sh 
. $DOT_FILES/marks/marks-command-completion.sh 

#
# switch to the desired default Java version
#
java7

#
# PATH
#
PATH=~/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH:/usr/local/sbin:$MYSQL_HOME/bin:$HOME/.rvm/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/csmith/.gvm/bin/gvm-init.sh" && ! $(which gvm-init.sh) ]] && source "/Users/csmith/.gvm/bin/gvm-init.sh"
