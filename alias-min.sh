#以下是我的用户alias
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

func_browserSync() {
    browser-sync start --server --files "*.css, *.html"
}

alias cd='func() { cd $1; ls; }; func'
alias cd..='cd ..'
alias cdcode='cd /media/lolimay/Code'
alias cdcpp='cd /media/lolimay/Code/CPP'
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
alias ddg='cd /media/lolimay/Code/Doc/deepin-develop-guide'
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
alias doc='cd /media/lolimay/Code/Doc'
alias algorithm='cd /media/lolimay/Code/Algorithm'
alias run='func_compile'
alias temp='cd ~/Temp'
alias sa=func_browserSync
alias template='cd /media/lolimay/Code/Web/Template'
alias webinit='fun() { ~/Scripts/webinit.sh $1; cd $1; code .;}; fun'
alias ans='cd ~/OpenVPN && bash ./connect.sh > /dev/null &'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export NODE_PATH="/home/lolimay/.nvm/versions/node/v10.8.0/lib/node_modules" #修复 Error: Cannot find module 'webpack/lib/node/NodeTemplatePlugin'
