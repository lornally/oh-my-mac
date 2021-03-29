> 忽然发现手机空间有一大半被系统占用了.

症状

- 之前版本的系统是system巨大.
- ios13里面, other占据了40G+, macos10.15catalina的other占据了20G+

###### 精华

mac

- 用trend的cleaner one.
- 最大的还是iphone备份, 把这个删了就有空间了.

iphone

- 给iphone做一个备份, 再restore iphone
- 如果没啥问题, 过两天记得删除这个备份, 这些本地备份相当占据存储空间.

###### 解决之路:

###### iphone的other巨大问题

1. iphone和mac的finder做一次sync, 然后发现other基本没有减少(如果减少很多, 就不必做下面这个麻烦事).
2. 在finder给iphone做一个备份
1. restore iphone, 此时iphone是空的.
2. restore backup, 把刚刚backup的的备份倒回去.
3. 此时需要一个wifi环境, iphone会自动下载各种app. 

###### macos的other太大问题

- 网络搜索了一圈, 基本没啥办法╮(￣▽￣)╭
- 这个貌似可以: https://macpaw.com/how-to/startup-disk-full-on-mac-os-x
- 真的很好用. 直接帮我删除临时文件, 奶奶的qq就有1.5G.
- 不过这是一个收费软件, 更难受的是, 他的收费页面弹不出来. ╮(╯_╰)╭
- 然后, 不死心, app store搜索clean, 发现 macpaw, tencent, 
- cleanmydrive是macpaw的, 貌似没啥用.
- tencent 的 lemon cleaner还是不错的, 运转很正常.
- trend的cleaner one 看上去比tencent靠谱, 在tencent的基础上还清理了2G, 并且要了一些必要的权限.
- appyogi的disk clean 这个也是收费的.
- 综合评价: trend最靠谱, 而且还是免费的.

