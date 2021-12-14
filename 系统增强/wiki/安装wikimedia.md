```sh
ssh -p 22 root@10.1.7.42

# 服务器
cd ~
cd .ssh
vi authorized_keys

# 如果之前copy上来了, 可以直接用cat
cat id_rsa.pub >> authorized_keys

# 需要确保权限
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

# 查看权限
ll

# wiki安装位置(一般情况下)
cd /var/www/html

# 从服务器下载文件
scp -r root@10.1.7.42:/var/www/html/mediawiki-1.37.0.tar.gz ./mediawiki-1.37.0.tar.gz


# apache 是包含在苹果的系统内的
sudo apachectl graceful

# 此时chrome: http://localhost/



# Nginx呢?
```


### 本地处理
```sh
# 准备mediawiki
scp -r root@10.1.7.42:/var/www/html/mediawiki-1.37.0.tar.gz ./mediawiki-1.37.0.tar.gz

# 验证apache
sudo apachectl graceful
apachectl -v # 查看版本
# 配置文件位置
subl /etc/apache2/httpd.conf
# 默认站点根位置
cd /Library/WebServer/Documents/

# 安装php
 brew install php

# 安装ImageMagick
brew install ImageMagick

# 安装parsoid
# 1.35 lts不需要, 1.36之后需要下面的配置在localsetting
wfLoadExtension( 'Parsoid', 'vendor/wikimedia/parsoid/extension.json' );

# 安装sqlite
# 四选一: MySQL MariaDB PostgreSQL SQLite
brew install sqlite


# 所以考虑下载1.35lts版本
```



### 服务端

```sh
# 把localsetting copy回本地, 可以看设置
# 并且可以删除服务端的localsetting, 然后, 重新配置wiki

```