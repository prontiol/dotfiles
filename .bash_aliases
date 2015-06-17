# cd
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'

# core commands
alias rm='rm -I --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
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

# su aliases
alias root='sudo -i'
alias su='sudo -i'
if [ $UID -ne 0 ]; then
    alias reboot='sudo /sbin/reboot'
    alias poweroff='sudo /sbin/poweroff'
    alias halt='sudo /sbin/halt'
    alias shutdown='sudo /sbin/shutdown'
    alias apt-get='sudo apt-get'
fi

