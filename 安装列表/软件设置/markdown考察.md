### 20211126

### markdown最终方案: sublime + 3个样式插件

- 参考sublime配置

#### markdown补充安装

> 参考: https://zhuanlan.zhihu.com/p/208791140

- 替代bear/ulysses

  - https://www.effie.co/
  - https://github.com/Zettlr/Zettlr
    - 支持brew
  - mweb https://www.zhihu.com/people/oulvhai作品

- 替代typora

  - https://github.com/vnotex/vnote/blob/master/README_zh_CN.md
    - 初体验不错
    - 修改主题要重新启动编辑器, 但是没有任何提示
    - 支持brew安装, brew安装的版本很老, 建议github安装
    - tab支持的不是特别充分
    - mac全局快捷键支持的并不充分, 例如cmd-w

- vscode插件

  - 同源的两个
    - vscode all markdown [GitHub - TobiasTao/vscode-md: VSCode markdown extension](https://github.com/TobiasTao/vscode-md)
    - Office Viewer https://github.com/vscode-ext-studio/vscode-office
  - https://github.com/tejasvi/markless
  - https://github.com/zaaack/vscode-markdown-editor

- 浏览器插件

  - [Vditor - 一款浏览器端的 Markdown 编辑器，支持所见即所得（富文本）、即时渲染（类似 Typora）和分屏预览模式](https://b3log.org/vditor/)
  - http://ww1.epiceditor.com/

  

### 0917

###### 不推荐的

- https://moeditor.js.org/

  - 老式编辑器, 
  - tab列表还非常不支持
- simplenote

  - App store可以下载
  - 难受的是需要邮箱注册才能用
  - 可以替代bear
- https://boostnote.io/

  - 贼复杂, 还要登录
- Haroopad
  - 老式编辑器
- https://github.com/laurent22/joplin/
  - 支持brew安装
  - 老式编辑器
  - 不支持列表tab

###### 遗憾放弃的/后续可以关注

- https://github.com/notable/notable
  - 列表的tab操作为0, 但是, 漂亮干净, 可以持续关注
- https://github.com/marktext/marktext
  - 列表的tab操作有各种问题
- https://github.com/benrbray/noteworthy
  - 这个还在开发中, 可以关注
- https://www.zhihu.com/people/oulvhai作品
  - one markdown 替代typora, 无法替代, 和typora同样的毛病, 大文件无法保存

### 插件 

- 2选一
  - vscode all markdown
    - 基于vditor和picgo
    - [GitHub - TobiasTao/vscode-md: VSCode markdown extension](https://github.com/TobiasTao/vscode-md)
  - Office Viewer
- 还有两个选项
  - markdown editor 这个插件更不错, 但是, 每次要手动指定用它打开. 参见[配置]
    - https://github.com/zaaack/vscode-markdown-editor
  - markless有两个版本, 但是只有一个代码库

    - https://github.com/tejasvi/markless
    - 并且他家的readme列出了typora的替代解决方案

### 编辑器 

- 2选一
  - typora
  - mark text
- mark text
  - [GitHub - marktext/marktext: 📝A simple and elegant markdown editor, available for Linux, macOS and Windows.](https://github.com/marktext/marktext)
  - 注意避开0.16.3版本
  - 可以和typora形成互补
  - 并且有个非常完美的表现: 自动滚动到底部, 导致结果: 不必再log倒序了
- typora
  - 很好用
  - 就是设置了icon的markdown, 确切的说是超过100k就出各种问题

### 笔记本

- 多选
- bear, 啥都好, 就是收费
- effie 免费, 因此可以替代bear
- https://github.com/Zettlr/Zettlr 可能手机端的支持还不够

### 参考

- https://github.com/benrbray/noteworthy
  - 还没有正式release, 但是可以手动安装
  - 并且主页介绍很棒, 适合参考入门
- [Vditor - 一款浏览器端的 Markdown 编辑器，支持所见即所得（富文本）、即时渲染（类似 Typora）和分屏预览模式](https://b3log.org/vditor/)
  - 这个是上面各种typora插件的基础
  - 是很多编辑器的基础
  - 并且自己的主页也有很多学习资料

### 配置

```sh
#typora插件需要配置
1. theme 选择 one dark modern
2. 设置里面, 选择:Viewer follow vscode theme, 配置:  "vscode-office.autoTheme": true
3. 如果不用, 这个设置其他插件也要用
    "workbench.editorAssociations": {
        "*.md": "default"
    },
```

### 问题

1. typora插件, 

   1. tab调节列表缩进有问题. 

   2. 源码格式, 

      1. 莫名多了一行下划线, 如何删除
      2. 官方答复, 这个是有的, 但是, 这个按钮我这边看不到
      3. 换了官方的另一个插件问题解决

2. mark text 

   1. 反向缩进, shift + tab 不起作用
   2. 官方说法是两次回车, 但是, 这不科学, 因为缩进无法调整了
   3. 这是一个bug, 改回0.16.2就可以了, 确实是0.16.3的bug