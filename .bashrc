
#	   | |             | |
#	   | |__   __ _ ___| |__  _ __ ___
#	   | '_ \ / _` / __| '_ \| '__/ __|
#	  _| |_) | (_| \__ \ | | | | | (__
#	 (_)_.__/ \__,_|___/_| |_|_|  \___|

set bell-style none	# set bell off
set -o vi		# set input as vi
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

# NeoVim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mario/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mario/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mario/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mario/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


### Run on terminal start
# Ctrl + l to clear up
bind -x '"\C-l": clear;'

