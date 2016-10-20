# Add userspace python binaries to path - 2016.07.12
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/wb/Library/Python/2.7/bin

# java home
export JAVA_HOME=`/usr/libexec/java_home`

# Alias List
alias ll='ls -l'

# Bash prompt
function parse_git_branch { 
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\n\[\033[1;36m\][\d \t] \[\033[1;35m\]\w\n \[\033[1;32m\]\u@\h \[\033[1;31m\]\$(parse_git_branch) > \[$(tput sgr0)\]"
