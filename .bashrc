stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

# For directory and config shortcuts:
source ~/.bash_shortcuts

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

#Generic shortcuts:
alias music="ncmpcpp"
alias clock="ncmpcpp -s clock"
alias visualizer="ncmpcpp -s visualizer"
alias news="newsbeuter"
alias email="neomutt"
alias files="ranger"
alias chat="weechat"
alias audio="pcamixer"
alias calender="calcurse"
alias getmail="offlineimap && notmuch new"
alias gm="offlineimap && notmuch new"

o() { xdg-open $@ & }

# System Maintainence
alias progs="pacman -Qet" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias upgr="neofetch && sudo pacman -Syyu --noconfirm && echo Update complete. | figlet"
alias sdn="sudo shutdown now"
alias newnet="sudo systemctl restart NetworkManager" # Refresh wifi
alias nf="clear && neofetch" # Le Redditfetch
#Install an AUR package manually (for Parabola to get AUR access):
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg

# Some aliases
alias p="sudo pacman"
alias v="vim"
alias sv="sudo vim"
alias r="ranger"
alias duck="sr duckduckgo"
alias sra="sudo ranger"
alias ka="killall"
alias g="git"
alias gitup="git push origin master"
alias gitpass="git config --global credential.helper cache"
alias tr="transmission-remote"
alias mkdir="mkdir -pv"
alias rf="source ~/.bashrc"
alias ref="~/.config/Scripts/shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias bars="bash ~/.config/polybar/launch.sh" # Run Polybar relaunch script
alias bw="wal -i ~/.config/wall.png" # Rerun pywal
weather() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.

# Laptop management
alias lsc="screen.sh l" # Use laptop screen only
alias vsc="screen.sh v" # Use VGA only
alias dsc="screen.sh d" # Use both laptop and VGA screen

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias youtube="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"
alias starwars="telnet towel.blinkenlights.nl"

# Audio and Music
alias mute="pamixer -m"
alias unmute="pamixer -u"
alias vu="pamixer --allow-boost -i 5"
alias vd="pamixer --allow-boost -d 5"
alias pause="mpc toggle"
alias next="mpc next"
alias prev="mpc prev"
alias trupause="mpc pause"
alias beg="mpc seek 0%"
alias lilbak="mpc seek -10"
alias lilfor="mpc seek +10"
alias bigbak="mpc seek -120"
alias bigfor="mpc seek +120"

# Dictionary
alias def="sdcv"
alias etym="sdcv -u \"English Etymology\""
alias frword="sdcv -u quick_french-english"
alias tofr="sdcv -u quick_english-french"
alias lword="sdcv -u quick_latin-english"
alias tol="sdcv -u quick_english-latin"
alias arb="sdcv -u \"English - Arabic\""

export BROWSER="qutebrowser"
