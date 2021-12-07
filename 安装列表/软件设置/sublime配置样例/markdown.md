
> 配置示例

```js
// Documentation at https://www.sublimetext.com/docs/color_schemes.html
{
 "variables":
 {
 },
 "globals":
 {
 },
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

//  { //这个定义了所有列表的文字颜色
//  "scope": "meta.paragraph.list.markdown",
//  "foreground": ""
// },

 {//这个生效, 但是foreground不生效
     "scope": "markup.list.numbered.markdown",
     "foreground": "#000",
          // "background": "#0f0",


 },




//   {//这个也不生效
//  "scope": "markup.list",
//  "foreground": "#000"
// },

// 这个定义了无序列表的符号颜色
//  {
//  "scope": "punctuation.definition.list_item.markdown",
//  "foreground": "#0f0"
// },


 ]
}


```