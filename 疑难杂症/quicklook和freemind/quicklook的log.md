###### 基础思路

- 弄个账号, 帮freemind签名
- 解决quicklook插件的权限问题



###### 20210324

- https://www.reddit.com/r/MacOS/comments/cgj1qs/cant_be_opened_because_apple_cannot_check_it_for/
- https://www.winytips.com/installer-cant-be-opened-because-apple-cannot-check-it-for-malicious-software/
- https://www.winytips.com/installer-cant-be-opened-because-apple-cannot-check-it-for-malicious-software/

```
# “FreemindQL.qlgenerator” cannot be opened because the developer cannot be verified.
# macOS cannot verify that this app is free from malware.

macos quicklook check current shell  cannot be opened because the developer cannot be verified. macOS cannot verify that this app is free from malware.

/Library/QuickLook
```



###### 20210325

- 总结之前的经验 done
- 这个玩意的权限咋弄?

```
FreemindQL.qlgenerator
```

- 步骤

```sh
搜索:
"qlgenerator"  cannot be opened because the developer cannot be verified
地址:
https://trac.macports.org/ticket/59218


In the interim, to manually stop the QL* files from being blocked by Catalina due to developer cannot be verified you can run:

$ xattr -d com.apple.quarantine /path/to/file

For example, to ignore the developer cannot be verified error for QLMarkdown I can run (note I installed it using homebrew but that doesn't change anything):

$ xattr -d com.apple.quarantine ~/Library/QuickLook/QLMarkdown.qlgenerator/Contents/MacOS/QLMarkdown

Your path might be different than mine

Do this for all the ql* file you have downloaded, keep in mind is the definitely not secure as in that you may be running a malicious QL* file. All of my files are stored in ~/Library/QuickLook/QL.*/Contents/MacOS/program
```

###### 0327

- 实践

```sh
xattr -d com.apple.quarantine /Library/QuickLook/FreemindQL.qlgenerator/Contents/MacOS/FreemindQL
```

- 果然失败了, 除了不报错了, 没有任何效果

```sh
qlmanage -p ./信息架构.mm
```

- 得到输出

```sh
qlmanage -p ./信息架构.mm
Testing Quick Look preview with files:
	./信息架构.mm
2021-03-27 15:58:54.039 qlmanage[914:13343] ++ GeneratePreviewForURL
2021-03-27 15:58:54.039 qlmanage[914:13343] -[NSError init] called; this results in an invalid NSError instance. It will raise an exception in a future release. Please call errorWithDomain:code:userInfo: or initWithDomain:code:userInfo:. This message shown only once.
2021-03-27 15:58:54.040 qlmanage[914:13343] Input file is /Users/bergman/git/work/weixin/tianyandesign/信息架构.mm
2021-03-27 15:58:54.040 qlmanage[914:13343] main bundle:NSBundle </Library/QuickLook/FreemindQL.qlgenerator> (loaded)
2021-03-27 15:58:54.040 qlmanage[914:13343] freemind location is:/Applications/FreeMind.app
2021-03-27 15:58:54.040 qlmanage[914:13343] freemind jar is:/Applications/FreeMind.app/Contents/Java/freemind.jar
2021-03-27 15:58:54.040 qlmanage[914:13343] JVM options is:-Xmx256m
Mar 27, 2021 3:59:00 PM freemind.main.Resources logException
SEVERE: An exception occured: 
javax.imageio.IIOException: Can't create cache file!
	at java.desktop/javax.imageio.ImageIO.createImageOutputStream(ImageIO.java:423)
	at java.desktop/javax.imageio.ImageIO.write(ImageIO.java:1589)
	at freemind.view.mindmapview.IndependantMapViewCreator.exportFileToPng(IndependantMapViewCreator.java:139)
	at freemind.view.mindmapview.IndependantMapViewCreator.main(IndependantMapViewCreator.java:63)
Caused by: java.nio.file.FileSystemException: /var/folders/_h/nklw6c5s6r5b9fg97237854w0000gn/T/imageio7650931344936718037.tmp: Operation not permitted
	at java.base/sun.nio.fs.UnixException.translateToIOException(UnixException.java:100)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:106)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:111)
	at java.base/sun.nio.fs.UnixFileSystemProvider.newByteChannel(UnixFileSystemProvider.java:218)
	at java.base/java.nio.file.Files.newByteChannel(Files.java:375)
	at java.base/java.nio.file.Files.createFile(Files.java:652)
	at java.base/java.nio.file.TempFileHelper.create(TempFileHelper.java:137)
	at java.base/java.nio.file.TempFileHelper.createTempFile(TempFileHelper.java:160)
	at java.base/java.nio.file.Files.createTempFile(Files.java:917)
	at java.desktop/javax.imageio.stream.FileCacheImageOutputStream.<init>(FileCacheImageOutputStream.java:88)
	at java.desktop/com.sun.imageio.spi.OutputStreamImageOutputStreamSpi.createOutputStreamInstance(OutputStreamImageOutputStreamSpi.java:68)
	at java.desktop/javax.imageio.ImageIO.createImageOutputStream(ImageIO.java:419)
	... 3 more

Error.
2021-03-27 15:59:00.497 qlmanage[914:13343] FreemindQL: failed with exit code 1.
2021-03-27 15:59:00.497 qlmanage[914:13343] About to release pool
2021-03-27 15:59:00.497 qlmanage[914:13343] -- GeneratePreviewForURL
2021-03-27 15:59:00.555 qlmanage[914:13318] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x8b03, name = 'com.apple.coredrag'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2021-03-27 15:59:00.570 qlmanage[914:13318] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x7817, name = 'com.apple.tsm.portname'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2021-03-27 15:59:00.790 qlmanage[914:13343] Persistent UI failed to open file file:///Users/bergman/Library/Saved%20Application%20State/com.apple.quicklook.qlmanage.savedState/window_1.data: No such file or directory (2)
```

其中报错:

```sh
2021-03-27 15:58:54.040 qlmanage[914:13343] JVM options is:-Xmx256m
Mar 27, 2021 3:59:00 PM freemind.main.Resources logException
SEVERE: An exception occured: 
javax.imageio.IIOException: Can't create cache file!
	at java.desktop/javax.imageio.ImageIO.createImageOutputStream(ImageIO.java:423)
	at java.desktop/javax.imageio.ImageIO.write(ImageIO.java:1589)
	at freemind.view.mindmapview.IndependantMapViewCreator.exportFileToPng(IndependantMapViewCreator.java:139)
	at freemind.view.mindmapview.IndependantMapViewCreator.main(IndependantMapViewCreator.java:63)
Caused by: java.nio.file.FileSystemException: /var/folders/_h/nklw6c5s6r5b9fg97237854w0000gn/T/imageio7650931344936718037.tmp: Operation not permitted
	at java.base/sun.nio.fs.UnixException.translateToIOException(UnixException.java:100)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:106)
	at java.base/sun.nio.fs.UnixException.rethrowAsIOException(UnixException.java:111)
	at java.base/sun.nio.fs.UnixFileSystemProvider.newByteChannel(UnixFileSystemProvider.java:218)
	at java.base/java.nio.file.Files.newByteChannel(Files.java:375)
	at java.base/java.nio.file.Files.createFile(Files.java:652)
	at java.base/java.nio.file.TempFileHelper.create(TempFileHelper.java:137)
	at java.base/java.nio.file.TempFileHelper.createTempFile(TempFileHelper.java:160)
	at java.base/java.nio.file.Files.createTempFile(Files.java:917)
	at java.desktop/javax.imageio.stream.FileCacheImageOutputStream.<init>(FileCacheImageOutputStream.java:88)
	at java.desktop/com.sun.imageio.spi.OutputStreamImageOutputStreamSpi.createOutputStreamInstance(OutputStreamImageOutputStreamSpi.java:68)
	at java.desktop/javax.imageio.ImageIO.createImageOutputStream(ImageIO.java:419)
	... 3 more

Error.

```

```sh
2021-03-27 15:59:00.497 qlmanage[914:13343] FreemindQL: failed with exit code 1.
2021-03-27 15:59:00.497 qlmanage[914:13343] About to release pool
2021-03-27 15:59:00.497 qlmanage[914:13343] -- GeneratePreviewForURL
2021-03-27 15:59:00.555 qlmanage[914:13318] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x8b03, name = 'com.apple.coredrag'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2021-03-27 15:59:00.570 qlmanage[914:13318] *** CFMessagePort: bootstrap_register(): failed 1100 (0x44c) 'Permission denied', port = 0x7817, name = 'com.apple.tsm.portname'
See /usr/include/servers/bootstrap_defs.h for the error codes.
2021-03-27 15:59:00.790 qlmanage[914:13343] Persistent UI failed to open file file:///Users/bergman/Library/Saved%20Application%20State/com.apple.quicklook.qlmanage.savedState/window_1.data: No such file or directory (2)
```

- core dump解决, 并未使用这个

```
You can generate core dump files on Mac Os X like this:

Create the file : /etc/launchd.conf, then :

echo "limit core unlimited" | sudo tee -a /etc/launchd.conf

Restart your Mac.

And that's it, the core dump files are generated in the /cores directory. Be careful the core dump files are large files so when you finishing troubleshooting your code, remove them.
参考: https://stackoverflow.com/questions/9412156/how-to-generate-core-dumps-in-mac-os-x/21308843#21308843
```

- 尝试新建文件

```sh
/Users/bergman/Library/Saved Application State/com.apple.quicklook.qlmanage.savedState/window_1.data
```

- 核心似乎是这个问题

```
javax.imageio.IIOException: Can't create cache file
```

- 正在下载freemind的源码, 然后看看啥情况.
- 学习下如何使用quicklook开发
  - https://swift.gg/2016/04/29/quick-look-framework/
  - https://cloud.tencent.com/developer/article/1023142

- 搜索这个试试:

```sh
macos quicklook javax.imageio.IIOException: Can't create cache file
```

###### 0328

- 继续
- 噩耗: https://stackoverflow.com/questions/60803906/how-to-debug-quicklook-plugin-on-macos-catalina

```
You should not use GeneratePreviewForURL for quicklook preview generation on Catalina.

Instead, one should implement the QuickLook Preview Extension target. Launching the target will open the debug session where everything can be debbuged in classical way.

Btw, echo-ing from GenerateThumbnailForURL.m should no longer work on Catalina because the extension doesn't have write permissions.
```

