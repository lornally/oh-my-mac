###### xmapp

1. vm已经停止维护了
2. brew install xmapp

```sh
# 安装会因为安全失败
 open ~/Library/Caches/Homebrew/downloads
# 然后手动继续
```





###### 配置

1. manage servers里面打开mysql, apache
   1. 浏览器: http://127.0.0.1/ 或者 http://localhost 都可以验证安装情况
1. 把备份解压到 `/Applications/XAMPP-VM/xamppfiles/htdocs/wiki`，

###### 处理数据

localsetting.php当前设置:

```php
## Database settings
$wgDBtype = "mysql";
$wgDBserver = "localhost";
$wgDBname = "my_wiki";
$wgDBuser = "root";
$wgDBpassword = "123.456a"; # 默认是空, 这个要改为空
```

1. 浏览器访问: http://localhost/phpmyadmin
2. 新建数据库 `my_wiki`（utf8mb4_general_ci）, 然后点 导入, 导入xxx.sql文件
3. 改localsetting, 删除password为空

###### 解决问题: 浏览器访问 `http://localhost:8080/wiki` 

1. intl问题, 本来很简单, 但是, 在kimi的傻逼指挥下, 乱套了, 所以只能卸载xampp再安装. 他有uninstall文件.

###### 可能得解决方案
1. 开一个docker, 让cursor/Claude折腾, 直到能运行为止
2. 下载老版本的xampp-vm, 