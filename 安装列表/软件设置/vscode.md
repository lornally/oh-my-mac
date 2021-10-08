### 基础设置

###### 这样从auto complete suggest选取项目就用tab了. 再也不因为enter误触而烦恼了.

```
Accept Suggestion On Enter    改为off
Editor: Tab Completion   改为on
```

###### 自动格式化得快捷键和其他应用一致

```
keyboard shortcut里面
搜索所有的shift option F
改为option tab
```

### 安装插件

- Bracket Pair Colorizer   : CoenraadS
- Output Colorizer : ibm

###### 对付大的json

- 安装json插件:  json tools (erik lynd)
- cmd option m
- 等待几秒, 这个是关键, 要有耐心等待.

### 不必再特别设置, 默认正确

###### 打开的时候自动打开之前打开的文件

restore windows

并且在side folder打开的情况下会失效

### 不需要设置, 没有必要性

###### js文件末尾自动加一个回车

insert final newline

###### 保存的时候自动格式化  - 如果你要进行editable的html编辑, 那么一定要关掉这个.

format on save

###### 如果上面那个不能用. 那么手工格式化.

shift + option + f



### 可能需要的设置

###### 去掉小数点自动补全

```
editor.acceptSuggestionOnCommitCharacter
"editor.quickSuggestions": false,
"editor.parameterHints": false,
"editor.wordBasedSuggestions": false,
"editor.snippetSuggestions": "none"


```

###### 去除自动tab转空格, eslint有单独的示例在[隐藏的配置文件]

```
eslintrc
"indent": 0,
"no-tabs":0,
"prettier/prettier": 0,
```

###### 支持es6 module

```json
launch.json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Launch Program",
      "program": "${workspaceFolder}/code/test.js",
      "sourceMaps": true,
      "outFiles": ["${workspaceFolder}/code/*"],
      "runtimeArgs": ["--experimental-modules"] //核心配置是这一句
    }
  ]
}
```

# 更多设置

> vscode的设置有点多

### 快捷键

此处应该设置: keyboard shortcut

###### format

- 原本: shift alt f
- 修改: alt f

## 设置

- 都在setting里面

### tab

- editor: tab size 改为1
- 关掉, 这个要求不许用空格做缩进: Editor: Insert Spaces

### 打开自动换行

- editor: word wrap on

### 自动补全

- 小数点: 必须关掉
  - Editor: Accept Suggestion On Commit Character
- 括号
  - 关掉: Editor: Auto Closing Brackets
- 引号
  - 必须关掉: "editor.autoClosingQuotes": "never"
- 按键只用tab不用enter
  - 必须关掉: Editor: Accept Suggestion On Enter
  - Editor: Tab Completion   改为on


### 文件类型

- 把cs指定给coffee
  - Files: Associations里面加一个就可以了

```
// Place your settings in this file to overwrite the default settings
{
  "some_setting": custom_value,
  ...

  "files.associations": {
    "*.thor": "ruby",
    "*.jsx": "javascript",
    "Jenkinsfile*": "groovy"
  }
}
# language id用view->command palette
```

- 参考: https://stackoverflow.com/questions/29973619/how-to-make-vs-code-treat-a-file-extensions-as-a-certain-language

### 紧凑模式

```
"editor.wordWrap": "wordWrapColumn",
"editor.wordWrapColumn": 100
```

