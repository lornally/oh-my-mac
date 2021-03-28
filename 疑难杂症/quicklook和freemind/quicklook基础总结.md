### textmate

###### textmate 是否才是万能钥匙?

- 下面这些都不搞, 只装textmate.

- 并不行. 重启了也还是不行. 

- ###### 后记

  - 很有可能安装一个textmate可以解决所有问题.
  - 很多的quicklook是白背景, 这个基本不能忍. 

### 基础

###### 基础命令

```sh
# 刷新
qlmanage -r  # 要quick look 生效, 需要
qlmanage -r cache

# 浏览
qlmanage -m plugins
qlmanage -l #列出所有quicklook

 qlmanage -p qulitest.mm #用这行代码就可以看到问题.
```

- 重新启动mac, 看到警告, 然后从[安全和隐私]这里允许他运行, 但是, 这个预览是白色的, 完全不能忍. 

### 安装和配置

###### 安装

```sh
brew cask reinstall qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate
```

参考: https://htr3n.github.io/2018/07/handy-quicklook/

###### markdown定制

```sh
#qlcommonmark的配置文件, 也可以直接copy到~目录.
code ~/.cmqlstyle.css
```

- css无法预览, 重启一下试试. 

###### 苹果作妖



> freemind的预览(quicklook)功能突然不能用了, 一直以为是我的姿势不对. 原来是苹果搞的鬼.

```sh
qlmanage -p ./todolist.mm     [16:28:33] #这个命令是直接测试这个quicklook.
Testing Quick Look preview with files:
	./todolist.mm
2020-04-07 16:28:48.642 qlmanage[88319:745521] ++ GeneratePreviewForURL
2020-04-07 16:28:48.642 qlmanage[88319:745521] -[NSError init] called; this results in an invalid NSError instance. It will raise an exception in a future release. Please call errorWithDomain:code:userInfo: or initWithDomain:code:userInfo:. This message shown only once.
2020-04-07 16:28:48.642 qlmanage[88319:745521] Input file is /Users/bergman/git/_X/_知网justdoit/2020editor/文档/todolist.mm
2020-04-07 16:28:48.642 qlmanage[88319:745521] main bundle:NSBundle </Library/QuickLook/FreemindQL.qlgenerator> (loaded)
2020-04-07 16:28:48.642 qlmanage[88319:745521] freemind location is:/Applications/FreeMind.app
2020-04-07 16:28:48.642 qlmanage[88319:745521] freemind jar is:/Applications/FreeMind.app/Contents/Java/freemind.jar
2020-04-07 16:28:48.643 qlmanage[88319:745521] JVM options is:-Xmx256m
2020-04-07 16:28:51.054 qlmanage[88319:745521] image loaded
2020-04-07 16:28:51.055 qlmanage[88319:745521] About to release pool
2020-04-07 16:28:51.055 qlmanage[88319:745521] -- GeneratePreviewForURL
2020-04-07 16:28:51.224 qlmanage[88319:745474] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x9007, name = 'com.apple.coredrag'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2020-04-07 16:28:51.352 qlmanage[88319:745474] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0xbc1f, name = 'com.apple.tsm.portname'
See /usr/include/servers/bootstrap_defs.h for the error codes. #这个文件并不存在. 
```

没有办法, 给freemind官方提一下吧, 看看是否能解决: https://sourceforge.net/p/freemind/discussion/22102/thread/27ba8065f7/



### 官方文档

- 文档在这里: https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/Quicklook_Programming_Guide/Introduction/Introduction.html
- 为了让我的quick look用的开心, 查了很多资料. wiki还是最靠谱的. : https://en.wikipedia.org/wiki/Quick_Look#/Supported_file_types_by_default