if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#   -------------
#   Set Prompt
#   -------------
export PS1="\[\033[0;96m\]\t \[\033[0;93m\][\[\033[0;93m\]\w\[\033[0;93m\]] \[\033[0;35m\]=> \[\033[0;37m\]"

#   ------------------------------------------------------------
#   Other Exports
#   ------------------------------------------------------------
export CLICOLOR=1
export EDITOR=/usr/bin/atom
export PATH="/usr/local/bin:$PATH"
export BLOCKSIZE=1k

#   ------------------------------------------------------------
#   GIT Setup
#   ------------------------------------------------------------
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

#   -----------------------------
#   MAKE TERMINAL EASY
#   -----------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias edit='atom'                           # edit: Opens any file in sublime editor
alias op='open -a Finder ./'                # f: Opens current directory in MacOS Finder
alias home="cd ~"                           # home: Go Home
alias c='clear'                             # c: Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path: Echo all executable Paths
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd: Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash: Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql: Opens any file in MacOS Quicklook Preview
zipf () { zip -r "$1".zip "$1" ; }          # zipf: To create a ZIP archive of a folder
alias myip='curl ip.appspot.com'            # myip: Public facing IP Address
alias grep='grep --color=auto'              # grep with colors
alias reload='source ~/.bash_profile'       # reload Shell

alias cleanpython='find . | grep -E "(__pycache__|\.pyc|\.py~|\.pyo$)" | xargs rm -rf' # Clean python files
