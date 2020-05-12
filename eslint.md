### 待办todo

- 做一个支持浏览器插件开发的eslint插件

### 操作

- eslint, 在隐藏的配置文件里面有一个

```sh
cnpm i eslint -g
```

航锋推荐用这个: https://github.com/umijs/fabric

在自己的每一个工作目录运行, 可以不做, 这个是添加eslint配置文件的.

```sh
npm init   //先要保证是一个npm目录才行.
eslint --init  
```



- 据说需要装这个插件, 可以去npm找找看有没有更好用的.

```sh
cnpm i -g eslint-plugin-html 
eslint-plugin-react #这个依赖也需要安装.
```

- 配合node时在package.json里面要加上:

```json
"devDependencies": {
  "babel-eslint":"latest"
}
```

- .eslintignore 类似gitignore的玩法, 可以忽略目录文件等等.

  ```
  备用
  ```

  

- 如果是全局安装的eslint, 那么可以查看确认一下

  ```sh
  npm list -g --depth 0 //查看全局安装的包.
  ```

- 两个问题的解决方法: 

```
(no-undef)
/* global getUsefulContents */  这个不知道是否能自动生成
(no-unused-vars)
/* exported getUsefulContents */ 这个不知道是否能自动生成
```

- 配置文件示例

```yaml
env:
  browser: true
  es6: true
  webextensions: true
  node: true
extends: 'eslint:recommended'
globals:
  Atomics: readonly
  SharedArrayBuffer: readonly
  chrome: true
parserOptions:
  ecmaVersion: 2018
#parser: "babel-eslint"
rules:
  indent: 0 
  linebreak-style: 0
  quotes: 0  #不是很有意义
  semi:
    - error
    - always
  no-tabs: 0  #不能使用这个, 尤其是做editor开发时.
  prettier/prettier": 0
  no-mixed-spaces-and-tabs: 0  #这个和tabs的问题是一样的, 字符串替换的时候会被搞死
  # 第一个值3选一    
  #"off" or 0 - 关闭规则
  #"warn" or 1 - 将规则视为一个警告（不会影响退出码）
  #"error" or 2 - 将规则视为一个错误 (退出码为1)
  # 第二个值指定需要遵守的规范. 比如换行有window和unix两种
  
  #或许有用的内容
  # react/prop-types": 0
  # react/jsx-indent": [2, "tab"]
  # react/jsx-indent-props": [2, "tab"]
	# 'strict': [0]
	# 'vars-on-top': 0
	#'global-require': 0
	#"indent": 0
	#"no-tabs":0
	#"prettier/prettier": 0
	#"spaced-comment":0
	#'new-cap':0
```

- 解除两大错误(no-undef)(no-unused-vars)的示例

```js
//库文件声明这个
/* exported log,xxx */ 

//应用文件声明这个
/* global getUsefulContents,xxx */
```

- 递增式声明使用overload
  - 场景: 全局定义一个总的eslintrc
  - 每个项目再定义一个自身的eslintrc