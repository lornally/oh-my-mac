###### 2021 安装老系统

- 因为苹果最近3年开始逐步放弃了老电脑都支持(滑稽哦, 并不是性能不足, 甚至老板的indel芯片更强劲).
- 所以, 老机器安装mac成为了一个问题. 甚至于, 官方服务器都不支持了.
- 此时又两条路

###### 安装最新版

- macOS Catalina Patcher

- 下载这个软件, 制作启动盘

- 开机时, 按住option, 选择启动磁盘

- 至少这个11.15是完美的, 感谢大神

- http://dosdude1.com/

- 安装chrome会遇到无法启动的问题: https://www.reddit.com/r/CatalinaPatcher/comments/h0jr1v/chrome_issues/

  ```sh
  xcode-select --install
  sudo xattr -cr /Applications/Google\ Chrome.app
  sudo codesign -f -s - /Applications/Google\ Chrome.app
  ```
  

###### 开源世界对catalina的支持真的不太好

- 机型识别在这里: https://support.apple.com/zh-cn/HT201300
  - 2009年的17寸是mbp5.2, 神啊, 恰好是有bug的版本
- mojava10.14
- 需要从苹果官方下载os.
  - safari->app store -> software update 这操作真是神奇了.
  - 下载好的文件会呆在application, 苹果不会删除它, 这个倒是比较好.
- mojava patcher本身有下载的地方tools->downloads.
  - 注意, 安装过程中要按照导引来弄, 不能乱点, 必有左上角的苹果标志, 点了就会死机.
  - mojava可能也不大行, 重试一次.
  - 不建议使用apfs, 因为固件本身不支持apfs启动.
  - 使用 mac extended好了很多, 但是, 重启之后chrome又不行了. 我裂开了.
  - 还是只能放弃mojava, 改回catalina

###### 安装catalina

1. 制作u盘mac extended格式, 比如u盘名字: pug
2. 按住option重启mac, 选择u盘: pug
   1. 选择磁盘工具, 把mac的启动盘格式化成apfs, 然后退出磁盘工具.
   2. 选择restall
   3. 重启时按住option, 选择安装post-install patches
   4. 然后进入第一次启动设置catalina, 此时会弹出patch updater

###### 安装官方支持的版本

- 是的, 安装官方支持的版本也很难. 因为, 开机安装会失败.

- 所以下载的11.11也不能用. 
- 尝试10.10

