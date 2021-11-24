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
- 样式最终用这个: agila theme

### 可以选择安装的项目

- markdown的preview, 其实没有卵用

  - markdown preview
  - livereload
- 样式还可以安装这些

  - 大神
    - https://github.com/jonschlinkert/sublime-markdown-extended
    - https://github.com/jonschlinkert/sublime-monokai-extended
  - material theme
  - theme spacegray
  - ayu
  - agila -> 这个是神作, 彻底解决markdown问题

```js
"color_scheme": "Packages/Agila Theme/Markdown/Oceanic Next Origin Markdown.tmTheme",
"theme": "auto",
```

### 并没有试用过的theme

- 下面这些并没有试用过, 空了再说
  - gravity
  - cyanide
  - darkmatter
  - afterglow
  - predawn
  - brogrammer
  - gruvbox
  - github theme
  - devastate
  - dracula

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

### 快捷键设置, 指定文件类型

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

