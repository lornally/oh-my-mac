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
  
  # 可能其他软件的问题也可以解决
  sudo xattr -cr /Applications/qBittorrent.app
sudo codesign -f -s - /Applications/qBittorrent.app
  ```
  

###### 开源世界对catalina的支持真的不太好

- mojava10.14
- 需要从苹果官方下载os.
  - safari->app store -> software update 这操作真是神奇了.
  - 下载好的文件会呆在application, 苹果不会删除它, 这个倒是比较好.
- mojava patcher本身有下载的地方tools->downloads.

###### 安装官方支持的版本

- 是的, 安装官方支持的版本也很难. 因为, 开机安装会失败.

- 所以下载的11.11也不能用. 
- 尝试10.10

