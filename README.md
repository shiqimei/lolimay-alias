# lolimay-alias

alias，顾名思义就是别名，它是 Linux 系统的一个命令。我们可以利用 alias 给一长串命令设置一个简单的别名，如直接在命令行输入
````bash
alias md=mkdir #为新建文件夹命令设置一个别名 md
````
但是，这样设置重启电脑后就会失效。还有一个方法，就是把 alias 命令写进 `~/.bashrc` 文件中，电脑开机进入系统后会自动执行 `~/.bashrc` 文件，这样我们的 alias 就可以永久生效了。

## 基本用法
1. 编辑alias配置文件
````
gedit ~/.bashrc #使用文本编辑器编辑~/.bashrc文件
````
 2. 更新alias配置文件
 ````
 source ~/.bashrc #执行~/.bashrc文件
 `````
 ## 高级用法
 1. 带参数alias(使用函数实现)
 ````
 alias cd='func() { cd $1; ls; }; func' #打开目录并显示文件信息
 ````
 ## 紧急修复
 若不小心把`~/.bashrc`文件破坏掉了，可以尝试用以下方法修复
 1. 获取当前的alias配置信息，终端输入 `alias` 回车得到当前已生效的所有 alias，复制到剪贴板
 2. 重置`~/.bashrc`文件
 ````
 cp /etc/skel/.bashrc ~/.bashrc
 ````
 3. 将剪贴板中的 alias 粘贴至.bashrc文件中，并执行`source ~/.bashrc`
 
````bash
# Author: @lolimay
# 2018.8.21
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
````
