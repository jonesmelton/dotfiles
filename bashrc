export PATH="/usr/local/bin:$PATH"
[[ -f ~/.bashrc ]] && . ~/.bashrc

# prompt
. ~/dev/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='$(__git_ps1 "(%s)")\n\W |> '

# extract common archives from cli
extract () {
       if [ -f $1 ] ; then
         case $1 in
           *.tar.bz2)   tar xjf $1     ;;
           *.tar.gz)    tar xzf $1     ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar e $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xf $1      ;;
           *.tbz2)      tar xjf $1     ;;
           *.tgz)       tar xzf $1     ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)     echo "'$1' cannot be extracted via extract()" ;;
            esac
        else
            echo "'$1' is not a valid file"
        fi
   }

# ls colors
alias ls='ls -FHG'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

# search in files with line number and context
ff() { grep -C2 -r -n $1 . ; }

# editor aliases
alias e="em"
alias a="atom"
export EDITOR='/Applications/Emacs.app/Contents/MacOS/Emacs'

eval "$(nodenv init -)"
alias cat="ccat"

em() { /Applications/Emacs.app/Contents/MacOS/Emacs "$@" & }

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
source /Users/j/scratch/composure.sh

export REACT_EDITOR="/Applications/Visual Studio Code.app/Contents/MacOS/Electron"
