# cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# core commands
alias rm='rm -I --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ls='ls -G'
alias ln='ln -i'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mkdir='mkdir -pv'
alias grep='grep -I'
alias bc='bc -l'
alias df='df -H'
alias du='du -ch'

# net commands
alias wget='wget -c'

# git aliases
alias git-cleanup='git fetch -p; git fsck --full; git reflog expire --all --expire=now; git gc --aggressive --prune=now; git repack -a -d -f --window=1000 --depth=1000'
alias git-cleanup-all='for dir in $(find . -name ".git" -type d); do echo "Processing $dir"; cd $dir/..; git-cleanup; cd ..; done'

# colors
export CLICOLOR=1
if [[ -n $(command -v dircolors) ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# su aliases
alias root='sudo -i'
alias su='sudo -i'
if [ $UID -ne 0 ]; then
    alias reboot='sudo /sbin/reboot'
    alias poweroff='sudo /sbin/poweroff'
    alias halt='sudo /sbin/halt'
    alias shutdown='sudo /sbin/shutdown'
    alias apt-get='sudo apt-get'
    alias iptables='sudo iptables'
fi

