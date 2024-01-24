# .bashrc

#-----------------------------#
# setting alias               #
#-----------------------------#

# ls command alias
alias ls='ls -F --color=auto'
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'

alias lx='ls -lXB'                # sort by extension
alias lk='ls -lSr'                # sort by size, biggest last
alias lc='ls -ltcr'               # sort by and show change time, most recent last
alias lu='ls -ltur'               # sort by and show access time, most recent last
alias lt='ls -ltr'                # sort by date, most recent last
alias lm='ls -al | less'          # pipe through 'less'
alias lr='ls -lR'                 # recursive ls
alias ld='ls -d */'               # only Dirs
alias lh='ls -lh'                 # change size unit

# grep command alias
alias agrep='find . -name "*" -print | xargs grep -n'        # all file
alias tgrep='find . -name "*.txt" -print | xargs grep -n'    # text file

alias cgrep='find . -name "*.c" -print | xargs grep -n'      # c file
alias hgrep='find . -name "*.h" -print | xargs grep -n'      # h file

alias pygrep='find . -name "*.py" -print | xargs grep -n'    # python file
alias rbgrep='find . -name "*.rb" -print | xargs grep -n'    # ruby file
alias plgrep='find . -name "*.pl" -print | xargs grep -n'    # perl file


# mkdir command alias
alias mkdir='mkdir -p'
alias mkdate='mkdir  `date +%y_%m_%d`'


# command alias
alias h='history'
alias j='jobs'
alias c='clear'

alias df='df -kTh'
alias vi='vim'

alias reload='source ~/.bashrc'
#alias tree='tree --charset=o'
alias dtree='tree -d'
alias stree='tree -Csu'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# command cd
alias ..='cd ..'        # one up directory
alias ...='cd ../../'   # twe up directory


# typo alias
alias s='ls -F --color=auto'
alias l='ls -lF --color=auto'
alias sl='ls -F --color=auto'
alias maek='make'


# make alias
alias m='make'
alias mk='make -k &> compileLog.txt'
alias mc='make clean'

# git command alias
alias ga='git add'
alias gc='git commit'
alias gl='git log -p'
alias glog='git log -p'
alias glogg='git log --graph'
alias gp='git push origin main'
alias gs='git status'
alias gdiff='git diff -U100'
alias gd='git diff -U100'

# svn alias
alias sinfo='svn info'
alias sup='svn update'
alias sc='svn commit'
alias sa='svn add'
alias slog='svn log --diff'
alias sdiff='svn diff -U100'
alias sd='svn diff -U100'
alias ss='svn status'

# Personal Help
alias l?='cat ~/.bashrc | grep "alias l.*=.ls" | grep ^alias'
alias a?='alias'
alias g?='cat ~/.bashrc | grep "alias .*grep=.find" | grep ^alias'


# history command
HISTSIZE=50000
HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S '

# python3 command alias
alias py='python'
alias pyv12='source ~/.venv/python3.12/newest/bin/activate'
alias pyv11='source ~/.venv/python3.11/newest/bin/activate'
alias pyv10='source ~/.venv/python3.10/newest/bin/activate'
alias pyvoff='deactivate'

# perl comand alias
alias pl='perl'

# MySQL command alias
alias msv='mysql --version'

# wsl alias
alias ex='explorer.exe'

