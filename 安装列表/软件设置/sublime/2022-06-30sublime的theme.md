> 之前的主题评价有问题, 很多时候, 需要重启才能完全生效

### 因此默认theme就很好
- mariana
- 因此就不需要区分markdown和其他文件了



## ------- 历史上的内容: -------




### theme中比较好的

- theme 文件夹显示明显
- ayu
- meterial
- color theme
- 支持markdown, 同时, 区分正则和字符串
- material, theme
- 不区分正则和字符串, markdown正常
- afterglow
- agila, 
- 有多个支持markdown的样式, 
- 推荐: oceanic next markdown
- dracula
- monokaiC 
- mariana
- monokai 正则和markdown不可得兼
- ayu
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
- 替换->  "color_scheme": "Packages/Material Theme/schemes/Material-Theme-Darker.tmTheme",
- 最终:   "color_scheme": "Packages/Dracula Color Scheme/Dracula.tmTheme",
- color_默认: cyanide, twilight "color_scheme": "Packages/Theme - Cyanide/Twilightcyanide.tmTheme",


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

### 自定义markdown的color-theme
- 先把需要弄得theme做成默认theme, 然后, custom-color-theme, 这样就找到了可以定制的文件, 然后可以设置回去
- 参考: https://www.rockoder.com/2020/10/01/sublime-markdown-vscode-syntax/
```js
"rules":
[
  //这个生效
  {
   "scope": "markup.list.unnumbered.markdown",
   "foreground": "#8ec",
 },
 { //这里定义的也是无序列表的符号颜色
   "scope": " markup.list.unnumbered.bullet.markdown",
   "foreground": "#e6e",
 },

 { //这里是有序列表的符号颜色
   "scope": " markup.list.numbered.bullet.markdown",
   "foreground": "#8ec",
 },

 {//这个生效, 但是foreground不生效
   "scope": "markup.list.numbered.markdown",
   "foreground": "#000",
 },

//因为定义了这个, 导致上面的forground不生效
 { //这个定义了所有列表的文字颜色, 

   "scope": "meta.paragraph.list.markdown",
   "foreground": ""
 },

//所以废弃之前的Markdown的特殊定义. 改为在正常theme里面定义markdown

```



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

