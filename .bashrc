
#Set bell off
set bell-style none

HISTSIZE= HISTFILESIZE= # infinite history.

#export PS1="[\u @ \h \W]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput bold)\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\] @ \[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#ALIASES
alias rm="rm -I"
alias ll='ls -alF --group-directories-first'
alias la='ls -A --group-directories-first'
alias l='ls -CF --group-directories-first'
alias dotgit="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

_topdf() {
	echo $1;
	pandoc -V geometry:margin=.5in $1.md -o $1.pdf
}
alias topdf=_topdf
set -o vi

LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS

#Run on terminal start up
bind -x '"\C-l": clear;'
neofetch -L
