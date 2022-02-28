export ZSH="/Users/machangkun/.oh-my-zsh"
ZSH_THEME="random"
plugins=(git z  safe-paste) # 注意此处不能有逗号
source $ZSH/oh-my-zsh.sh

# autojump 因为zsh有了z, 可以不再配置这个了
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# 用z代替j
# alias j= '(){z $1;}' 注意这个缩写不成立
alias j='function f(){z "$1"};f'

#杭锋提供了cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--disturl=https://npm.taobao.org/dist"

#设置ruby

export PATH="/usr/local/opt/ruby/bin:$PATH"
# For compilers to find ruby you may need to set:
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
# For pkg-config to find ruby you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"


# 代理设置
alias neton="export all_proxy=socks5://127.0.0.1:1080"
alias httpon="export all_proxy=http://127.0.0.1:1087"

alias netoff="unset all_proxy"
alias ip="curl cip.cc"

alias pip3="pip3 --proxy 127.0.0.1:1087"
alias pip="pip --proxy 127.0.0.1:1087"

# vscode代理
alias vscode="code --proxy-server='http://127.0.0.1:1087'"


# 设置java
# export JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/usr/local/opt/openjdk/include"


alias odps="/Users/machangkun/git/work/pandak/项目/数据任务3odps_doing/odpscmd_public/bin/odpscmd"


# 设置sublime的命令行缩写, 原本的太磕碜了
alias lime="subl"

# 设置notebook的alias
alias pn="ipython notebook"
alias pnn="jupyter notebook --notebook-dir=/Users/machangkun/Documents/__ipython_notebook"
