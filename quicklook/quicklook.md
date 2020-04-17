###### 基础命令

```sh

#先装一个十全大补膏
# brew cask reinstall qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv  qlimagesize webpquicklook suspicious-package quicklookase qlvideo

#brew cask reinstall   qlmarkdown #貌似没有, 重启一下试试.

# 刷新
qlmanage -r 
qlmanage -r cache

# 浏览
qlmanage -m plugins
qlmanage -l #列出所有quicklook
```

重新启动mac, 看到警告, 然后从[安全和隐私]这里允许他运行, 但是, 这个预览是白色的, 完全不能忍. 

###### 安装

```sh
brew cask reinstall qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen

# quicklookapk 这个装不上
brew cask install betterzip #为了quicklook, 装一下试试.
```

参考: https://htr3n.github.io/2018/07/handy-quicklook/

###### markdown定制

```sh
#qlcommonmark的配置文件
code ~/.cmqlstyle.css
```

css无法预览, 重启一下试试. 

###### 后记

- 很有可能安装一个textmate可以解决所有问题.
- 很多的quicklook是白背景, 这个基本不能忍. 

