#        __              __               
#       / /  ___ _ ___  / /   ____ ____   
#   _  / _ \/ _ `/(_-< / _ \ / __// __/   
#  (_)/_.__/\_,_//___//_//_//_/   \__/    
#                                         

# set bell off
set bell-style none
set -o vi
export EDITOR='vim'
export VISUAL='vim'

# infinite history.
HISTSIZE= HISTFILESIZE=

# bash promt format
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\] @ \[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# import aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# colors for diferent kinds of files
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS

#Run on terminal start up
bind -x '"\C-l": clear;' # Ctrl + l to clear
neofetch -L
