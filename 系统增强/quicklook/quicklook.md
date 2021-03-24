###### textmate 是否才是万能钥匙?

- 下面这些都不搞, 只装textmate.
- 并不行. 重启了也还是不行. 

###### 基础命令

```sh
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
brew cask reinstall qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate
```

参考: https://htr3n.github.io/2018/07/handy-quicklook/

###### markdown定制

```sh
#qlcommonmark的配置文件, 也可以直接copy到~目录.
code ~/.cmqlstyle.css
```

css无法预览, 重启一下试试. 

###### 后记

- 很有可能安装一个textmate可以解决所有问题.
- 很多的quicklook是白背景, 这个基本不能忍. 

###### freemind忽然不能预览的问题.

```sh
# “FreemindQL.qlgenerator” cannot be opened because the developer cannot be verified.
# macOS cannot verify that this app is free from malware.

macos quicklook check current shell  cannot be opened because the developer cannot be verified. macOS cannot verify that this app is free from malware.
```

