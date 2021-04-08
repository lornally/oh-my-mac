###### 因为icloud会自动占用空间, 所以需要的空间不足

```sh
1. users/shared这个目录有什么用, 能删除吗?
- 目录不能删.
- 但是, 其中的previously recocated item 是mac帮你保留系统安装过程中无法处理的文件的地方. 所以是可以删除的.


2. ~/Library/Application Support/com.apple.voicememos有什么用?
~/Library/Application Support/com.apple.voicememos/Recordings
- 尝试删掉了这个目录, 不过, 马上要用下面的dd命令占用掉, 不然就被icloud占用了.

3. https://developer.apple.com/download/more/ # 并不行, 没有新版本, 
# 其实有的, 需要搜索Xcode, 这里区分大小写. 奶奶的.

4. disk utility整理修复 # 看上去没用

5. #https://www.jackenhack.com/mac-os-remove-purgeable-high-sierra/
dd if=/dev/zero of=~/stupidfile.crap
# 持续运行这个命令, 直到磁盘彻底满了. 然后, 删了这个文件就可以安装大家伙了.

6. 即便这个文件已经有35G, 依旧不可以安装xcode. 那么在此尝试disk utility
7. xcode解压之后, 必须原地打开. 不能移动?
8. 放到application里面解压, 在此提示空间不足, 因此之前没做disk utility, 还是需要做一下.
9. 把xcode.xip放到移动盘, 然后解压到application, 此时, 保证application有40G空间, 终于可以安装了, 感谢苹果不杀之恩.
```

