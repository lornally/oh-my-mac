###### 安装

```sh
brew install v2ray
# 随命令一起下载的 geosite.dat 和 geoip.dat 放置在 /usr/local/share/v2ray/ 目录下
# 安装成功会显示: 
To have launchd start v2ray now and restart at login:
  brew services start v2ray
Or, if you don't want/need a background service you can just run:
  v2ray -config=/usr/local/etc/v2ray/config.json
```

###### 编辑配置文件

```sh
# 这目录有ip和site的dat文件
/usr/local/share/v2ray/
# 这个是配置文件
vscode /usr/local/etc/v2ray/config.json
# /etc/v2ray/ 或 /usr/local/etc/v2ray/
```

###### 执行

```sh
v2ray -config=/usr/local/etc/v2ray/config.json # 先执行这个, 看看是否有问题
brew services start v2ray # 然后搞成service执行
```

> 抛弃界面, 抛弃麻烦, 这个世界清静了
