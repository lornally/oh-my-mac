- qbittorrent还不错, 但是可能启动不了
- transmission
- folx



### qbittorrent无法启动问题

```sh
# 这里第二句话无法执行, 因为qbittorrent根本就没签名
sudo xattr -cr /Applications/qBittorrent.app
sudo codesign -f -s - /Applications/qBittorrent.app
# 奇迹发生了, 4.1.9直接就是可以的. 神啊, 只要右键打开就行了
# 答案在这里: https://www.reddit.com/r/qBittorrent/comments/jw4s78/qbittorrent_hangs_on_macos_big_sur_requires/
# 下载在这里: https://www.fosshub.com/qBittorrent-old.html
# 同一个答案下面有建议删除: ~/Application Support/qBittorrent/rss/articles/storage.lock .

# 另一个答案: https://www.reddit.com/r/qBittorrent/comments/jtne6t/macos_big_sur_and_qbittorrent_freezing_on_launch/
rm Library/ApplicationSupport/qBittorrent/BT_backup/*

这个目录: /Users/username/Library/Application Support/qBittorrent/BT_backup/ 
删除.fastresume
```

### 拿公开tracker

- https://github.com/ngosang/trackerslist
- 参考本项目的目录: 疑难杂症/下载bittorrent慢