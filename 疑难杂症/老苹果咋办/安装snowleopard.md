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

```
- brew, 官方有替代方案: tigerbrew
```sh
ruby -e "$(curl -fsSkL raw.github.com/mistydemeo/tigerbrew/go/install)"
```

- 滚轮方向不对
	- 安装软件: https://pilotmoon.com/scrollreverser/

- sublime 没有保存工作区

###### 科学上网, 

- v2ray没戏了, shadowsocks是否可以, 不清楚.
- host模式可能可以, 尝试一下, 其实关键是github.