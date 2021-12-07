
> 配置示例

```js

 //这个生效
  {
     "scope": "markup.list.unnumbered.markdown",
     "foreground": "#8cb",
 },
 { //这里定义的也是无序列表的符号颜色
     "scope": " markup.list.unnumbered.bullet.markdown",
     "foreground": "#8ec",
 },

 { //这里是有序列表的符号颜色
     "scope": " markup.list.numbered.bullet.markdown",
     "foreground": "#cd8",
 },

//  { //这个定义了所有列表的文字颜色
//  "scope": "meta.paragraph.list.markdown",
//  "foreground": ""
// },

 {//这个生效, 但是foreground不生效
     "scope": "markup.list.numbered.markdown",
     "foreground": "#b4c973",
          // "background": "#0f0",
 },
  {//这个生效, 但是foreground不生效
     "scope": "punctuation.definition.list_item.markdown",
     "foreground": "#bfd",
          // "background": "#0f0",


 },
```

