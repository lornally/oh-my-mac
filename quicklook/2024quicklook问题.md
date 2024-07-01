### 202406 quicklook无效的问题
* markdown
* freeplane
```sh
# 安装对应插件
brew install qlmarkdown
# 下面重启相关服务
qlmanage -r
qlmanage -r cache
killall Finder
# 此时并未解问题, 需要到app目录, 打qlmarkdown.app才可以.

# 这个曾经运行过
xattr -cr ~/Library/QuickLook/*.qlgenerator
```

### 20240627
* markdown按照上面的操作解决了. mm尚未解决.



### 0701

```sh
# 卸载所有的quicklook插件
brew uninstall qlcolorcode qlcommonmark qlimagesize qlstephen quicklook-csv    quicklook-json 
# 关闭安全设置
sudo spctl --master-disable

# 安装所有quicklook插件
brew install qlcolorcode qlcommonmark qlimagesize qlstephen quicklook-csv    quicklook-json qlmarkdown qlvideo suspicious-package 


brew install qlcolorcode qlmarkdown quicklook-json qlimagesize qlvideo quicklook-csv qlstephen suspicious-package webpquicklook

# 这个貌似失效了
webpquicklook

# 打开安全设置
sudo spctl --master-enable




```

```sh
# 443问题再次出现: 
curl: (35) LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection to raw.githubusercontent.com:443 

# 这一套没用, 之前弄过了
mate  ~/.ssh/config
# 修改内容: 
Host github.com
 Hostname ssh.github.com
 Port 443

# 尝试
brew update
brew upgrade curl
brew upgrade openssl
```

* 回顾了一下, 在软件设置和疑难杂症中有不少quicklook的记录, 可能这个要自己弄一下