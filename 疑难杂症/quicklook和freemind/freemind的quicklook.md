###### 苹果作妖



> freemind的预览(quicklook)功能突然不能用了, 一直以为是我的姿势不对. 原来是苹果搞的鬼.

```sh
qlmanage -p ./todolist.mm     [16:28:33] #这个命令是直接测试这个quicklook.
Testing Quick Look preview with files:
	./todolist.mm
2020-04-07 16:28:48.642 qlmanage[88319:745521] ++ GeneratePreviewForURL
2020-04-07 16:28:48.642 qlmanage[88319:745521] -[NSError init] called; this results in an invalid NSError instance. It will raise an exception in a future release. Please call errorWithDomain:code:userInfo: or initWithDomain:code:userInfo:. This message shown only once.
2020-04-07 16:28:48.642 qlmanage[88319:745521] Input file is /Users/bergman/git/_X/_知网justdoit/2020editor/文档/todolist.mm
2020-04-07 16:28:48.642 qlmanage[88319:745521] main bundle:NSBundle </Library/QuickLook/FreemindQL.qlgenerator> (loaded)
2020-04-07 16:28:48.642 qlmanage[88319:745521] freemind location is:/Applications/FreeMind.app
2020-04-07 16:28:48.642 qlmanage[88319:745521] freemind jar is:/Applications/FreeMind.app/Contents/Java/freemind.jar
2020-04-07 16:28:48.643 qlmanage[88319:745521] JVM options is:-Xmx256m
2020-04-07 16:28:51.054 qlmanage[88319:745521] image loaded
2020-04-07 16:28:51.055 qlmanage[88319:745521] About to release pool
2020-04-07 16:28:51.055 qlmanage[88319:745521] -- GeneratePreviewForURL
2020-04-07 16:28:51.224 qlmanage[88319:745474] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x9007, name = 'com.apple.coredrag'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2020-04-07 16:28:51.352 qlmanage[88319:745474] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0xbc1f, name = 'com.apple.tsm.portname'
See /usr/include/servers/bootstrap_defs.h for the error codes. #这个文件并不存在. 
```

没有办法, 给freemind官方提一下吧, 看看是否能解决: https://sourceforge.net/p/freemind/discussion/22102/thread/27ba8065f7/

###### freemind的quicklook



###### 代码

```
git clone git://git.code.sf.net/p/freemind/code freemind-code
```

- 放到知网的back目录下

### 研究历程

###### freemind忽然不能预览的问题.

```sh
# “FreemindQL.qlgenerator” cannot be opened because the developer cannot be verified.
# macOS cannot verify that this app is free from malware.

macos quicklook check current shell  cannot be opened because the developer cannot be verified. macOS cannot verify that this app is free from malware.
```

###### 如果我给他签个名, 是不是就ok了. 