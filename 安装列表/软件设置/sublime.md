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

```js
[ 
  //格式化代码
  {
    "keys": ["alt+tab"],
    "command": "reindent", 
    "args": {
      "single_line": false
    }
  },
  //去除enter的选择autocomplete功能
  { "keys": ["enter"], "command": "noop", "context":
   [
     { "key": "auto_complete_visible" },
     { "key": "setting.auto_complete_commit_on_tab", "operand": false }
   ]
  },
  //把自动补全功能给shift
  { "keys": ["shift"], "command": "commit_completion", "context":
   [
     { "key": "auto_complete_visible" },
     { "key": "setting.auto_complete_commit_on_tab", "operand": false }
   ]
  },
  //给tab在自动补全中跳转的功能
  {
    "keys": ["tab"],
    "command": "move",
    "args": {"by": "lines", "forward": true},
    "context": [{"key": "auto_complete_visible"}]
  },
  {
    "keys": ["shift+tab"],
    "command": "move",
    "args": {"by": "lines", "forward": false},
    "context": [{"key": "auto_complete_visible"}]
  },
  //去除原本的tab补全功能
  { "keys": ["tab"], "command": "noop", "args": {"mini": true, "default": "\t"},
   "context":
   [
     { "key": "auto_complete_visible", "operand": false },
     { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true },
     { "key": "setting.tab_completion", "operator": "equal", "operand": true },
     { "key": "preceding_text", "operator": "regex_match", "operand": ".*\\w", "match_all": true },
   ]
  },

]

```

### 分屏

- 本来就支持, View—Layout—Columns：2 ，

### 改变tab尺寸

```js
{
  "ignored_packages": [   "Vintage" ],
  // The number of spaces a tab is considered equal to
  "tab_size": 1,
  //不用tab补全
  "auto_complete_commit_on_tab": false,
}
```

