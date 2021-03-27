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

```
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

