### textmate

###### textmate 是否才是万能钥匙?

- 下面这些都不搞, 只装textmate.
- 并不行. 重启了也还是不行. 
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
brew install qlimagesize suspicious-package   quicklook-csv quicklook-json qlcommonmark qlcolorcode qlstephen textmate
```

参考: https://htr3n.github.io/2018/07/handy-quicklook/

###### markdown定制

```sh
#qlcommonmark的配置文件, 也可以直接copy到~目录.
code ~/.cmqlstyle.css
```

- css无法预览, 重启一下试试. 



### 官方文档

- 文档在这里: https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/Quicklook_Programming_Guide/Introduction/Introduction.html
- 为了让我的quick look用的开心, 查了很多资料. wiki还是最靠谱的. : https://en.wikipedia.org/wiki/Quick_Look#/Supported_file_types_by_default
- https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/Quicklook_Programming_Guide/Articles/QLArchitecture.html#//apple_ref/doc/uid/TP40005020-CH4-SW1
- https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/Quicklook_Programming_Guide/Articles/QLSaveInDocument.html#//apple_ref/doc/uid/TP40005020-CH10-SW4
- https://developer.apple.com/documentation/quicklook
- https://developer.apple.com/design/human-interface-guidelines/macos/system-capabilities/quick-look/
- 中文文档放到了[环境]里面
- 这个文档不错: https://htr3n.github.io/2018/07/handy-quicklook/

### 可能需要的插件

```sh
# https://github.com/toland/qlmarkdown
brew  install qlmarkdown

# https://multimarkdown.com/
# https://github.com/fletcher/MMD-QuickLook
# https://github.com/ttscoff/MMD-QuickLook
brew install ttscoff-mmd-quicklook
# 配置: ~/.mdqlstyle.css
```

