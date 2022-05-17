> coffee 官方推荐 better coffee

### 但是只要选择文件是coffee

```sh
Error loading syntax file "Packages/Better CoffeeScript/CoffeeScript.tmLanguage": Error in regex: target of repeat operator is invalid in regex (?<!\\)(#).*$$?



```

- 参考: https://forum.sublimetext.com/t/error-loading-syntax-file-each-time-after-opening-st2/6474
- 删除一个文件, 立马解决问题:   ~/.config/sublime-text-3/Local/Session.sublime_session


### 指定cs扩展名
View -> Syntax -> Open all with current extension as ...