spot light在el captian变得巨难用, 

- 因为无法调整结果顺序了,
- stackoverflow有权威回答, 俩字: 没门. 
- 这事就要命了, 很多时候我只是想查单词, 
- 恰好那个软件不支持三脂点击.

然后, 这个时候, 我spotlight, 一堆没用的信息. 恨死人了.

1. 被逼无奈, 试试alfred.
2. 然后, 我也是醉了, 默认啥都搜不出来.
3. 然后, 问了谷哥, stackoverflow,  原来他的逻辑是给予关键字的, 这些关键字是可以设置的. 好吧. 大家各自设置吧. 其实, 我最烦这种vi mode了.


> 这是两个基础功能, 但是一堆坑.

## 问题

- spotlight, 不能索引某些文本文件, 比如: markdown. 
- quicklook, 不能看某些文件, 比如某些文本文件和mindmap(比如freemind的mm).

## 索引md

mac 索引 md , 可以安装qlmarkdown, 请参考: 

- [https://github.com/toland/qlmarkdown]
- [http://stackoverflow.com/questions/365669/how-can-i-make-spotlight-index-markdown-files]
- 然后发现貌似不起作用, 是否要重建索引?
  - [https://support.apple.com/en-us/HT201716]
  - 也可以命令行重建索引.
- cool 成功了.

还有另外一条路, 使用richtext的plist:

- [http://hiltmon.com/blog/2015/11/17/a-yosemite-markdown-spotlight-importer/]
- [http://brettterpstra.com/2011/10/18/fixing-spotlight-indexing-of-markdown-content/]





### high sierra的spotlight崩溃

> high sierra一出现我就安装了, 然后 spotlight就崩了, 只要一输入他就闪退.
> 被迫我又降级到sierra, 但是, 最近sierra开始不停出各种问题: 
>
> - 比如: 3d touch呼出字典又不工作了, 明明字典里面有的单词也显示一篇空白, 
> - 比如: finder左边的favorites乱动, 不受控制.
> - 鬼知道还有啥问题, 总之, 每次苹果一升级, 老系统就很快不能用了, 最残酷的是有一次iphone升级, 导致mac上面的notes不能用, 然后, 我就转用ulysis, 直到我发现了bear
>
> 我知道, 苹果又在呼唤我升级了. 其实, 我宁愿死在10.6, 10.6之后的macos都是垃圾, 真的.

### 沉冤不得雪, 苹果不理你

然后, 我又一次作死的安装了high sierra, 我以为结局会有些许不同, 然而, 苹果的表现就是那么稳定, 该崩溃就崩溃, 绝不玩概率, 该闪退就闪退, 保证每次都闪退.

然后上网查了一通, 没啥鸟用, 但是, 看到了各路豪杰对着苹果的哭诉, 控诉, 声声血, 滴滴泪.....

### 自力更生

只能自力更生了. 实在不行, 老子就用alfred

1. 先打开timemachine备份. 
2. 打开spotlight的设置.
3. 等取消的钩钩都取消他, 然后竟然, 竟然, 竟然就不崩溃了.
   ![https://discussions.apple.com/servlet/JiveServlet/showImage/2-32856413-936737/Screen+Shot+2018-01-12+at+11.12.03+AM.png](https://discussions.apple.com/servlet/JiveServlet/showImage/2-32856413-936737/Screen+Shot+2018-01-12+at+11.12.03+AM.png)


我把答案写在了这里: https://discussions.apple.com/thread/8137190?start=15&tstart=0

大家翻到第二页, 搜索: [长昆from杭州] 

### 尾声

> 为毛还有尾声? 因为我的terminal报错了: xcrun: error: invalid active developer path (/Library/Developer/CommandLineTools), missing xcrun at: /Library/Developer/CommandLineTools/usr/bin/xcrun

然后, 到苹果去, 重装xcode command line tools: https://developer.apple.com/download/more/

### 另一个解决方案: 给苹果打电话

https://forums.macrumors.com/threads/security-update-2017-001-safari-spotlight-search-crashing.2092368/

### markdown的搜索和预览

```sh
# 安装qlmarkdown 可以解决预览问题
brew cask install qlmarkdown
# 刷新
qlmanage -r 

# 解决搜索问题
1. 下载一个文件: http://cdn3.brettterpstra.com/downloads/Markdown.mdimporter.zip
2. 将markdown.dmimporter移动到~/Library/Spotlight, 如果没有这个文件夹, 咱们要自己个建, 注意大小写Spotlight, 首字母大写
3. 执行一句:
mdimport -r ~/Library/Spotlight/Markdown.mdimporter
mdimport -L #这句话用来验证上面这个是否加入了, 如果没加入, 那么需要等待, 或者可以尝试做做第四步重建索引.
4. 最后一步, 还需要重建索引, 这个过程漫长而且会有各种不正常, 强烈建议这个时候不要操作mac, 建议可以出去玩玩啥的, 反正我等了半个小时还是没好, 然后我出去吃了个饭, 就好了. 大约总时间2个小时之后, OK了.
sudo mdutil -E /
mdimport -L #再次验证
```

> 