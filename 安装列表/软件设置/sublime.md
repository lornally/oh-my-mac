### 支持中文

```sh
# 安装控制台package control
菜单: tools -> Install Package Control…
快捷键: cmd+shift+p -> Install Package Control
# 安装codecs33
Command + Shift + P打开搜索窗口，输入install package：
点击Install Package，打开 Package 列表，然后在输入Codecs33
# 安装converttoutf8
安装之后会有一个菜单项file -> gbk2utf8
# https://github.com/seanliang/ConvertToUTF8/blob/master/README.zh_CN.md
```



### 格式化代码

- 设置一下就好了, [Preferences]->[Key Bindings]->[User]中,  中文版的位置在  [首选项]->[按键绑定-用户]

```json
[
	{
		"keys": ["alt+tab"],
		"command": "reindent", 
		"args": {
			"single_line": false
		}
	}
]

```

### 分屏

- 本来就支持, View—Layout—Columns：2 ，