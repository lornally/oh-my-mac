> https://www.mediawiki.org/wiki/Manual:Running_MediaWiki_on_macOS








## 最终
1. 使用xmapp-vm版本
2. 使用wiki的lts版本: 1.35
3. 把文件夹拖到lampp/htdocs里面
4. 浏览器直接就可以访问了


```sh
# 安装
brew install xampp-vm

# 下载wiki lts 1.35
https://www.mediawiki.org/wiki/Download

# 文件拖过去
xmapp -> volume -> explore
cd lmapp/htdocs
# 或者添加虚拟目录也可以
# 这个链接其实有解释, 要看的仔细点
https://www.apachefriends.org/blog/new_xampp_20170628.html

# 浏览器访问
http://localhost:8080/wiki/
```

## 服务器
```sh
# 下载原本的配置文件
scp root@10.1.7.42:/var/www/html/LocalSettings.php ./LocalSettings.php
# 服务器端修改文件名, 一遍再次配置
mv ./LocalSettings.php ./LocalSettingsback.php
# 浏览器访问网址, 再次配置wiki

# 把配好的localsetting传上去
scp ./LocalSettings.php root@10.1.7.42:/var/www/html/LocalSettings.php 


# 把图片传上去
scp ./images/panda.jpeg root@10.1.7.42:/var/www/html/images/panda.jpeg

# 在localsetting设置图片
$wgLogos = [ '1x' => "$wgResourceBasePath/images/panda.jpeg" ];

# 再次上传localsetting
scp ./LocalSettings.php root@10.1.7.42:/var/www/html/LocalSettings.php

# 注意图片需要135px, 改了尺寸, 再次上传
scp ./images/panda.png root@10.1.7.42:/var/www/html/images/panda.png

# 注意不要乱搞插件, 尤其是安全和反垃圾

# 如果服务器不响应修改, 可以重启web服务
systemctl restart httpd


```


## 这些也是废弃方案
1. 直接使用mamp搞, 有完整包
2. 结果还是一样的, 那么wikimedia需要安装插件

### 插件
> https://www.mediawiki.org/wiki/Manual:Extensions/zh
> 不论干啥都需要插件
###### 编辑器
- 2010
- https://www.mediawiki.org/wiki/Extension:WikiEditor/zh
- wfLoadExtension( 'WikiEditor' );
- Special:Version
