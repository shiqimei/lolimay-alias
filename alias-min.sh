func_compile() { 
    if [ ! -d 'build' ]; then
        md build
    fi
    cd build > /dev/null
    cmake ..
    make -j4
    echo -e '\r'
    ./$1
    cd .. > /dev/null
    echo -e '\r'
}

alias cd='func() { cd $1; ls; }; func'
alias cd..='cd ..'
alias cdcode='cd /media/lolimay/Code'
alias cmake.='cmake . && make'
alias code.='code ./'
alias deepin='cd /media/lolimay/Code/Deepin'
alias ealias='code ~/.bashrc'
alias ualias='source ~/.bashrc'
alias l='ls -CF'
alias la='ls -A'
alias ls='ls --color=auto'
alias md='mkdir'
alias re='mv'
alias web='cd /media/lolimay/Code/Web'
alias blog='cd /media/lolimay/Code/Blog'
alias post='cd /media/lolimay/Code/Blog/source/_posts'
alias cls='clear'
alias scripts='cd ~/Scripts'
alias ddg='cd /media/lolimay/Code/Doc/deepin-develop-guide'
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
alias doc='cd /media/lolimay/Code/Doc'
alias algorithm='cd /media/lolimay/Code/Algorithm'
alias run='func_compile'
alias temp='cd ~/Temp'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
