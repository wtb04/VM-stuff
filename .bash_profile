HOST_PC=Lapbuntu
HOST_NAME=wtb

shopt -s autocd
shopt -s histappend

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset

emojis=("👾" "🌐" "🎲" "🌍" "🎈" "🔥")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $bldgrn%s: $txtrst%s $txtred%s $txtgrn%s\n$txtrst" "$HOST_NAME"" - ""$HOST_PC" "$dir"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

fortune | cowsay -f tux

function mkcd()
{
        mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias lsa="ls -a" #
alias stats="htop"
alias speed="speedtest"
