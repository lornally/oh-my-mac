
### 0629
- 出现各种brew问题
- brew会提示, 找不到各种包
- 尝试根据brew doctor的提示, 进行各种操作. 可能是科大的源有问题, 下次记得不要使用科大的源
- 安装brew之后, 立刻执行brew doctor并仔细看返回结果

### 20220329
- 搞定sublime的todo高亮, 这玩意需要不少配置, 尤其是我给markdown设置了不同的color theme, 因此, markdown的配置和正常不在一起, 这个是最晕的, 中间没有生效也是因为这个没注意, 估计是配到其他文件对应的color theme了


## ------2021过去了-------

### 1214
- 继续wiki
### 1213
- 调整快捷键
- ctrl 补全
- ctrl + shift 自动格式化
### 0917

- 继续考察markdown编辑器
- https://www.zhihu.com/people/oulvhai作品

  - mweb 替代bear
  - one markdown 替代typora

###### 不推荐的

- https://moeditor.js.org/

  - 老式编辑器, 
  - tab列表还非常不支持
- simplenote

  - App store可以下载
  - 难受的是需要邮箱注册才能用
  - 可以替代bear
- https://boostnote.io/

  - 贼复杂, 还要登录
- Haroopad
  - 老式编辑器
- https://github.com/laurent22/joplin/
  - 支持brew安装
  - 老式编辑器
  - 不支持列表tab

###### 可以关注

- https://github.com/notable/notable
  - 列表的tab操作为0, 但是, 漂亮干净, 可以持续关注

### 0902

```sh
# 用z代替j
# alias j= '(){z $1;}' 注意这个缩写不成立
alias j='function f(){z "$1"};f'
```



### 0901

- 继续安装: brew install  qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate typora  upic
- 因为现在brew可以多进程了, 所以可以开多个terminal, 同时安装所有的包
- 配置并启动了v2ray
- 配置了.zshrc
- 为了解决chrome问题, 重新下载安装chrome从https://www.google.cn/chrome/
- 为了看硬盘情况, 下载: brew install omnidisksweeper 
- 使用疑难杂症里面的解决方案解决chrome问题

```sh
sudo xattr -cr /Applications/OmniDiskSweeper.app
sudo codesign -f -s - /Applications/OmniDiskSweeper.app
```

- 牛死我了, photos的icloud存储优化选项依旧再photos里面
- mac可以在系统设置里面设置全局代理

```sh
  git config --global user.email "catalina@17mbp.com"
  git config --global user.name "m的17寸mbp"
```



### 20210831
  - 修表 done
  - 自行车座, to week end
  - 继续安装， 搜狗拼音成功, 原生拼音直接不能用
  - 软件
  - sublime的序列号
  - ulysis
  - bear
  - 最先装brew吧
- 08:26 开始  
  - oh-my-zsh 
```sh
sh -c "$(curl -fsSL https://gitee.com/pocmon/ohmyzsh/raw/master/tools/install.sh)"
```
- brew
```sh
# 一行脚本解决问题
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
```

```sh
# 一堆脚本, 但是link有问题
sudo mkdir /usr/local/Homebrew
sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git /usr/local/Homebrew

# sudo ln -s /usr/local/Homebrew/bin/brew /usr/local/bin/brew
# 注意在catalina里面, 位置修改了

sudo mkdir -p /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core

sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core

sudo mkdir -p /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask
sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask

sudo chown -R $(whoami) /usr/local/Cellar
brew -v

echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc     #刷新
brew update
```

- 安装vscode vscode 镜像
  - http://vscode.cdn.azure.cn/stable/3866c3553be8b268c8a7f8c0482c0c0177aa8bfa/VSCode-darwin-universal.zip

- 开始使用brew
brew reinstall karabiner-elements  qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate typora sourcetree upic
- 安装chrome和v2ray都很正常
### 20210830

- 9:27
  - v2ray
- 6:32
  - 继续brew 安装v2ray
```sh
==> ./make.bash --no-clean
Last 15 lines from /Users/bergman/Library/Logs/Homebrew/go/01.make.bash:
2021-08-29 20:51:10 +0800

./make.bash
--no-clean

dyld: Symbol not found: _clock_gettime
  Referenced from: /private/tmp/go-20210829-5553-em0gz7/go/gobootstrap/bin/go
  Expected in: flat namespace

Building Go cmd/dist using /private/tmp/go-20210829-5553-em0gz7/go/gobootstrap. ()
dyld: Symbol not found: _clock_gettime
  Referenced from: /private/tmp/go-20210829-5553-em0gz7/go/gobootstrap/bin/go
  Expected in: flat namespace

./make.bash: line 184:  5584 Trace/BPT trap: 5       GOROOT="$GOROOT_BOOTSTRAP" GOOS="" GOARCH="" GO111MODULE=off "$GOROOT_BOOTSTRAP/bin/go" build -o cmd/dist/dist ./cmd/dist

Do not report this issue to Homebrew/brew or Homebrew/core!

These open issues may also help:
envoy: removes go dependency https://github.com/Homebrew/homebrew-core/pull/84071
envoy@1.18: removes go dependency https://github.com/Homebrew/homebrew-core/pull/84072
[epic] Remove GOPATH for go modules formula https://github.com/Homebrew/homebrew-core/issues/47627

Error: You are using macOS 10.11.
We (and Apple) do not provide support for this old version.
You will encounter build failures with some formulae.
Please create pull requests instead of asking for help on Homebrew's GitHub,
Twitter or any other official channels. You are responsible for resolving
any issues you experience while you are running this
old version.

```
### 20210829

- 3:48
  - 徒手装v2ray
- 先试试brew

```
brew install karabiner-elements visual-studio-code  qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate sourcetree upic


brew install  visual-studio-code  qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate sourcetree upic
brew install  qlstephen textmate sourcetree upic
```

- 7:49
  - 现在开始, 继续徒手v2ray.
- 7:56
  - 参考运行文档: https://github.com/v2fly/v2fly-github-io/blob/master/docs/guide/command.md

###### 20210828

- 9:30
  - icloud里面没有看到document
  - icloud的优化存储设置在photos里面
- 14:00
  - 之前尝试改host, 失败
- 4:53
  - 之前尝试改镜像, 失败

```sh
# 这个ruby写法已经是废弃的了
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install >> brew_install

# 现在是这个写法
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" >> bs

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh >> bs
```

- 4:53开始
  - https://www.cnblogs.com/huanhao/p/installbrew.html

```sh
sudo mkdir /usr/local/Homebrew
sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git /usr/local/Homebrew
# 如果已经有了
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git 


sudo ln -s /usr/local/Homebrew/bin/brew /usr/local/bin/brew

sudo mkdir -p /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core

sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core
# 如果已经有了
git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

sudo mkdir -p /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask
sudo git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-cask.git /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask

sudo chown -R $(whoami) /usr/local/Cellar
brew -v

cd "$(brew --repo)"
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git

echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc

source ~/.zshrc     #刷新

brew update

```

- 5:03pm
  - 做比较难得事情, 而不是用比较难的方法做事
- 8:54
  - https://blog.csdn.net/weixin_43752854/article/details/104971012
  - 这里介绍了修改install.sh的方法

```sh
# 直接访问这个文件
https://raw.githubusercontent.com/Homebrew/install/master/install.sh
# 保存到本地
# 修改源码

else
  HOMEBREW_PREFIX_DEFAULT="/home/linuxbrew/.linuxbrew"
  HOMEBREW_CACHE="${HOME}/.cache/Homebrew"
 
  STAT="stat --printf"
  CHOWN="/bin/chown"
  CHGRP="/bin/chgrp"
  GROUP="$(id -gn)"
fi
# BREW_REPO="https://github.com/Homebrew/brew” 修改前
BREW_REPO="git://mirrors.ustc.edu.cn/brew.git”  #修改后
CORE_TAP_REPO="git://mirrors.ustc.edu.cn/homebrew-core.git”  #新增

# 执行脚本, 如果不可执行, 就修改为可执行
chmod a+x brew_install


```

- 清华和科大都有官方文档
  - https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/
  - http://mirrors.ustc.edu.cn/help/homebrew-bottles.html?highlight=brew
- vscode改镜像

```
https://az764295.vo.msecnd.net/stable/3866c3553be8b268c8a7f8c0482c0c0177aa8bfa/VSCode-darwin-universal.zip


http://vscode.cdn.azure.cn/stable/3866c3553be8b268c8a7f8c0482c0c0177aa8bfa/VSCode-darwin-universal.zip
```

- 修改.zshrc

```sh
plugins=(git z) # 注意此处不能有逗号
```

- 解决brew update报错

```sh
# 执行update
brew update
# 报错
error: cannot open .git/FETCH_HEAD: Permission denied
Error: Fetching /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask failed!

# 参考
https://blog.csdn.net/weixin_37557729/article/details/107011964
# 解决
whoami # 查询当前用户名
sudo chown -R bergman:staff * # 这里bergman是用户名
brew doctor
```

- v2ray的安装, 之前装过的.

```sh
# 可以徒手装, 安装文档
https://github.com/v2fly/v2fly-github-io/blob/master/docs/guide/install.md

# 安装文件的位置
https://github.com/v2fly/v2ray-core/releases

# 运行文档
https://github.com/v2fly/v2fly-github-io/blob/master/docs/guide/command.md
```

