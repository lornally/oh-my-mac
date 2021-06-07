### 系统安装

###### 下载10.6

- 下载了macos 10.6 
- 速度巨快的网站
- 而且没有任何弹窗
-  https://themacgo.com/mac-os-x-snow-leopard-10-6-dmg-mac-free-download-offline/



###### disk utility 的restore有问题

- mac recovery有问题, 晚上回家再弄吧.
- https://eshop.macsales.com/blog/39422-how-to-use-the-restore-feature-of-disk-utility-to-clone-a-drive
- 神啊, 回家没用, 还是要直接搞
-  SuperDuper

###### 替代工具

- My personal recommendations are (order is not significant): 

- https://discussions.apple.com/thread/1083115

  \1.  [Retrospect Desktop](http://www.dantz.com/) (Commercial - not yet universal binary) 
  \2.  [Synchronize! Pro X](http://www.qdea.com/) (Commercial) 
  \3.  [Synk](http://www.decimus.net/) (Backup, Standard, or Pro) 
  \4.  [Deja Vu](http://propagandaprod.com/dejavu.html) (Shareware) 
  \5.  [PsynchX 2.1.1](http://sourceforge.net/projects/psyncx) and  [RsyncX 2.1](http://archive.macosxlabs.org/rsyncx/rsyncx.html) (Freeware) 
  \6.  [Carbon Copy Cloner](http://www.bombich.com/software/ccc.html) (Freeware - 3.0 is a Universal Binary) 
  \7.  [SuperDuper!](http://www.shirt-pocket.com/) (Commercial) 

###### 用recovery模式确实可以clone

- 开机时按住cmd+R
- 然后磁盘工具可以恢复磁盘
- 记得事前把镜像文件放到顺手的地方, 比如: share文件夹

### 软件

- iwork09, 找资源下载
- freemind 有10.6.8版本, 官网可以装
- google chrome 49, 官网可以装
- sogou输入法 2.1, 找资源下载
- sublime2, 官网可以
- theunarchiver, 官网可以
- vlc2.2.8, 官网可以
- karabanar 成为了必需品, 需要安装版本8.4

###### 信息传递

- qq, 微信都不可以
- ichat, google talk也都完蛋了
- idisk, mobileme也都完蛋了
- mail.163.com可以的

###### 遇到的问题

- git, 这个之前确实没想到, 要安装git
```sh
# 即便xcode也不能用， 因为xcode的tools是针对10.7的
# git官网也是不可以的， 但是， 这里给了线索
https://git-scm.com/download


＃ git 和 sf都可以
https://github.com/timcharper/git_osx_installer
https://sourceforge.net/projects/git-osx-installer/

# 并且使用host可以解决github的访问问题
```
- brew, 官方有替代方案: tigerbrew
```sh
ruby -e "$(curl -fsSkL raw.github.com/mistydemeo/tigerbrew/go/install)"
```

- 滚轮方向不对
	- 安装软件: https://pilotmoon.com/scrollreverser/

###### zsh安装
参考: https://zhuanlan.zhihu.com/p/113019330
主要思路
1. git clone项目下来
2. 注释掉setup_ohmyzsh函数和调用
3. 注释掉文件夹已经存在的判断
4. 把文件夹改名为 ~/.oh_my_zsh
```
{+#+} setup_ohmyzsh() {
#   {+#+} Prevent the cloned repository from having insecure permissions. Failing to do
#   {+#+} so causes compinit() calls to fail with "command not found: compdef" errors
#   {+#+} for users with insecure umasks (e.g., "002", allowing group writability). Note
#   {+#+} that this will be ignored under Cygwin by default, as Windows ACLs take
#   {+#+} precedence over umasks except for filesystems mounted with option "noacl".
{+#+}   umask g-w,o-w
{+# +}
{+#+}   echo "${BLUE}Cloning Oh My Zsh...${RESET}"
{+# +}
{+#+}   command_exists git || {
{+#+}     fmt_error "git is not installed"
{+#+}     exit 1
{+#+}   }
{+# +}
{+#+}   ostype=$(uname)
{+#+}   if [ -z "${ostype%CYGWIN*}" ] && git --version | grep -q msysgit; then
{+#+}     fmt_error "Windows/MSYS Git is not supported on Cygwin"
{+#+}     fmt_error "Make sure the Cygwin git package is installed and is first on the \$PATH"
{+#+}     exit 1
{+#+}   fi
{+# +}
{+#+}   git clone -c core.eol=lf -c core.autocrlf=false \
{+#+}     -c fsck.zeroPaddedFilemode=ignore \
{+#+}     -c fetch.fsck.zeroPaddedFilemode=ignore \
{+#+}     -c receive.fsck.zeroPaddedFilemode=ignore \
{+#+}     --depth=1 --branch "$BRANCH" "$REMOTE" "$ZSH" || {
{+#+}     fmt_error "git clone of oh-my-zsh repo failed"
{+#+}     exit 1
{+#+}   }
{+# +}
{+#+}   echo
{+#+} }

setup_zshrc() {
  # Keep most recent old .zshrc at .zshrc.pre-oh-my-zsh, and older ones
@@ -265,29 +265,29 @@ main() {
    exit 1
  fi

  {+#+} if [ -d "$ZSH" ]; then
  {+#+}     echo "${YELLOW}The \$ZSH folder already exists ($ZSH).${RESET}"
  {+#+}     if [ "$custom_zsh" = yes ]; then
  {+#+}       cat <<EOF
  {+# +}
{+  #+} You ran the installer with the \$ZSH setting or the \$ZSH variable is
  {+#+} exported. You have 3 options:
  {+# +}
{+  #+} 1. Unset the ZSH variable when calling the installer:
  {+#+}    $(fmt_code "ZSH= sh install.sh")
  {+#+} 2. Install Oh My Zsh to a directory that doesn't exist yet:
  {+#+}    $(fmt_code "ZSH=path/to/new/ohmyzsh/folder sh install.sh")
  {+#+} 3. (Caution) If the folder doesn't contain important information,
  {+#+}    you can just remove it with $(fmt_code "rm -r $ZSH")
  {+# +}
{+  #+} EOF


```

### 尚未解决

- sublime 没有保存工作区, 
  - 可能可以用project解决
  - 或许这个设置可以的:  **hot_exit** : Preferences.sublime-settings
- tigerbrew 无法使用
  - https://www.jianshu.com/p/bea984d27cd2
  - 可能用科大源可以解决大部分问题: https://mirrors.ustc.edu.cn/
  - https://www.zhihu.com/question/31360766
- zsh安装
  - https://blog.csdn.net/shenhonglei1234/article/details/106653646
  - https://touka.dev/tech/oh-my-zsh-china-mirror/

###### 科学上网, 

- v2ray没戏了, shadowsocks是否可以, 不清楚.
- 可能这个有用: https://www.tynsoe.org/stm/