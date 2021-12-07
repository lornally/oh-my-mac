### 和alt-tab兼容

- 因为alt-tab占用了快捷键
- 因此, 格式化的快捷键调整为: ctrl + shift

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

### 失焦保存和退出快照

```js
# 失去焦点保存
// Set to true to automatically save files when switching to a different file
// or application
"save_on_focus_lost": true,
# 禁止热退出, 这个热退出, 不做任何保存, 只是保存当前快照. 会导致遗漏提交
// Exiting the application with hot_exit enabled will cause it to close
// immediately without prompting. Unsaved modifications and open files will
// be preserved and restored when next starting.
//
// Closing a window with an associated project will also close the window
// without prompting, preserving unsaved changes in the workspace file
// alongside the project.
//
// Hot exit has different modes to choose from:
// - "always": Always perform a hot exit when the application exits. This
//             includes when the last window is closed on relevant
//             platforms.
// - "only_on_quit": Only perform a hot exit when the application is asked
//                   to exit, not when the last window is closed. This
//                   setting is only used on Windows and Linux.
// - "disabled": Disable hot exit.
"hot_exit": "disabled",
```



### 自动双引号

```js
// Controls auto pairing of quotes, brackets etc
"auto_match_enabled": false,
```

### 原本缩进代码不合理

```js
	{ "keys": ["tab"], "command": "indent" },
	{ "keys": ["shift+tab"], "command": "unindent" },
```



### markdown列表自动

- 安装插件就可以解决
  - User Guide is available at https://sublimetext-markdown.github.io/MarkdownEditing
  - Bugs or feedback via https://github.com/SublimeText-Markdown/MarkdownEditing/

### 可以选择安装的项目

- markdown的preview, 其实没有卵用

  - markdown preview
  - livereload
- 样式还可以安装这些

  - 大神
    - https://github.com/jonschlinkert/sublime-markdown-extended
    - https://github.com/jonschlinkert/sublime-monokai-extended
    - https://www.positronx.io/best-sublime-text-3-themes/
  - material theme
  - ayu
  - agila -> 这个是神作, 彻底解决markdown问题

```js
"color_scheme": "Packages/Agila Theme/Markdown/Oceanic Next Origin Markdown.tmTheme",
"theme": "auto",
```

- gravity, dark 还行
- cyanide
- darkmatter
- afterglow, twilight还可以
- predawn
- devastate
- afterglow, 一直认为加减号作为文件夹打开标记, 远远好于三角形
- github, 彩色文件夹不正常

### theme中比较好的

- theme 文件夹显示明显
  - ayu
  - meterial
- color theme
  - 支持markdown, 同时, 区分正则和字符串
    - material, theme
  - 不区分正则和字符串
    - afterglow
    - agila, 
      - 有多个支持markdown的样式, 
      - 推荐: oceanic next markdown
    - dracula
    - monokaiC 
    - mariana
    - monokai 正则和markdown不可得兼
  - 不区分正则, 同时markdown引用不正常
    - gruvbox, ndc dark 很棒啊.
    - github, dark 大概是习惯了, 这个觉得很舒服
  - markdown 的引用显示不正常, 区分正则
    - 可用
      - theme spacegray, base16 eighties 也不错
      - cyanide, twilight black等等都不错
      - afterglow, twilight还可以
      - material
      - agila originic next
    - 暖色
      - brogrammer, 比较夸张
      - ayu
      - github, dark legacy
      - predawn
      - monokai extended

### 由此, 需要区分markdown和code的显示

- 打开一个markdown文件
- 菜单: Preferences / Settings More / Syntax Specific

```ruby
{"color_scheme": "Packages/Agila Theme/Markdown/Oceanic Next Markdown.tmTheme",
  }
# 参考: https://hiltmon.com/blog/2012/11/07/multiple-themes-in-sublime-text-2/
# 如果安装了markdowneditor, 那么此处有markdown的theme示例
```

### 最终选择

- 整应用: ayu, dark
- color_markdown: agila, Oceanic Next
- color_默认: cyanide, twilight


### 自定义color-theme 颜色模板/皮肤/主题/样式/模式
```js
// Documentation at https://www.sublimetext.com/docs/color_schemes.html
{"variables":{},
"globals":{
 //样式原本的全局文字是'f1f1f1', 简直刺眼
 "foreground": "#bbb"
},
"rules":[{
 "name":"comment",
 "scope":"comment",
 //样式原本的全局文字是'696969', 完全看不清啊
 "foreground": "#b9b"
},
{"name": "Comment_multi",
 "scope": "comment.block, punctuation.definition.comment.block",
 "foreground": "#b8b"
},
{"name": "Comment_single",
 "scope": "comment.line, punctuation.definition.comment.line",
 "foreground": "#a9a"
}]}
```


### 几个附加设置

```js
//使用空格代替tab
"translate_tabs_to_spaces": true,
//不要在保存时自动格式化
"save_on_beautify": false,
```

### 解决ruby格式不正确问题

- ruby的自动格式会错误的跟随注释comment的缩进
- 需要安装插件解决: beautify_ruby
- 默认的快捷键很磕碜, 可以这样修改: 

```js
	{ "keys": ["alt+tab"], "command": "beautify_ruby" },
```

### 快捷键设置
###### 针对不同的插件
> 参考: https://stackoverflow.com/questions/27325002/sublime-text-editor-change-plugin-hotkey
> console方案: https://stackoverflow.com/questions/23083454/how-do-i-create-a-key-binding-shortcut-to-run-a-custom-package-plugin-in-subli
> 菜单方案: https://stackoverflow.com/questions/25885473/sublime-text-how-to-add-a-key-binding-to-hex-viewer-package-command
1. 方式一, 寻找sublime-keymap
  2. 通过菜单打开package文件目录: Menu->Preferences->Browse packages.
  2. 用package control打开目录: Cmd-Shift-P -> Package Control: list packages
  3. 打开sublime-keymap, 就可以看到修改的参考了
4. 如果上面找不到keymap, 那么可以用更基础的方式: 
  5. 打开ST console 
  6. 输入 sublime.log_commands(True)
  7. 执行命令操作, 从console里面就可以看到command名字了
8. 方式3, 通过菜单能找到你需要修改的keymap
  9. Package Settings 
  10. 找到你的应用 
  11. Key Bindings 
  12. Default, 注意这里要打开default, 因为要参考command是啥, 
    13. 不能直接开user, user大概率是空的, 啥都没有
    14. 也可能开的, 就是你自己的keymap的user设置, 当然没有需要设置的command

###### 指定文件类型

```ruby
# 如果两个定义冲突, 那么必须这样, 写好, 写成避免冲突的写法
{ 
  "keys": ["alt+tab"],
  "command": "beautify_ruby", 
  "context": { "key": "selector",
    "operator": "equal", 
    "operand": "source.rb, source.ruby" }

  },
{
  "keys": ["alt+tab"],
  "command": "reindent", 
  "args": {
    "single_line": false
    },
  "context": { "key": "selector",
    "operator": "not_equal", 
    "operand": "source.rb, source.ruby" }
  },
```

### 退出时自动保存工作状态

- 保存工作状态, 同时还要提示未保存文件
- 完美的答案, 关掉hot_exti, 打开remember_open_files

```ruby
	"hot_exit": "disabled",
	"remember_open_files": true,
```

