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
scp ./squareblack.png root@10.1.7.42:/var/www/html/images/panda.png
# 在localsetting设置图片
$wgLogos = [ '1x' => "$wgResourceBasePath/images/panda.jpeg" ];

# 再次上传localsetting
scp ./LocalSettings.php root@10.1.7.42:/var/www/html/LocalSettings.php

# 注意图片需要135px, 改了尺寸, 再次上传
scp ./images/panda.png root@10.1.7.42:/var/www/html/images/panda.png

# 传插件上去
scp -r ./DarkMode root@10.1.7.42:/var/www/html/extensions/
scp -r ./UploadWizard root@10.1.7.42:/var/www/html/extensions/
# 注意不要乱搞插件, 尤其是安全和反垃圾
# 改localsetting: wfLoadExtension( 'DarkMode' );

# 传皮肤上去
scp -r ./DarkVector root@10.1.7.42:/var/www/html/skins/
# 改localsetting: wfLoadSkin( 'DarkVector' );



# 如果服务器不响应修改, 可以重启web服务
systemctl restart httpd


# 配置域名
# 修改apache的配置
# /etc/httpd/conf/httpd.conf
#    - 改ServerName 并没有什么用
#    - systemctl restart httpd 重启服务也没有效果


Order allow,deny
Deny from all
DocumentRoot /var/www/html
ServerName pang.wiki
ServerAlias www.pang.wiki
ErrorLog "/var/www/html/log/httpd/test-error.log"
CustomLog "/var/www/html/log/httpd/test.log"


NameVirtualHost *:80
<VirtualHost *:80>

    DocumentRoot /var/www/html/

    ServerName pang.wiki


</VirtualHost>



# Begin vhost record on the default HTTP port 80
<VirtualHost *:80>
    # This is the name of the vhost.
    ServerName pang.wiki
    # These are alternative names for this same vhost.
    # We put the other domains here. They will all go to the same place.
    ServerAlias www.pang.wiki
    # Directory where the website code lives.
    DocumentRoot /var/www/html

    <Directory />
     Options FollowSymLinks
     AllowOverride All
    </Directory>

</VirtualHost>



<VirtualHost *:80>
ServerAdmin admin@mydomainname.com
ServerName  www.mydomainname.com
DocumentRoot /var/www/html/www.mydomainname.com
<Directory /var/www/html/www.mydomainname.com/>
    AllowOverride All
    Require all granted
</Directory>
ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
```

## 问题
> 参考: https://www.cnblogs.com/fengzhiwu/p/5521222.html
1. 如果报错: 不能将上传内容存储至暂存处（UploadStashFileException）：无法创建目录 mwstore://local-backend/local-temp。
 - 修改 wiki目录/images 的权限777, 并且用户是apache
2. 如果报文件尺寸和类型, 修改localsetting
```php
# 去掉类型, 慎用
$wgVerifyMimeType = false;

# 文件类型和黑名单
wgFileExtensions
$wgFileExtensions = array_merge( $wgFileExtensions, [ 'pdf', 'txt', 'mp3' ] );
wgFileBlackList

# 文件尺寸
$wgUploadSizeWarning = 2147483647;
$wgMaxUploadSize = 2147483647;

# 

```
```ini
# etc/php5/apache2/php.ini
upload_max_filesize = 2147483647
post_max_size = 2147483647
max_execution_time = 0
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
