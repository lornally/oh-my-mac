

eslint, 在隐藏的配置文件里面有一个

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



###### 待解决问题

- no-undef
  - 是不是需要webpack? 
  - mdn/brower extension的eslint是否有?
- no-unused-vars 这个问题和上面是一体的. 
- 如何优雅的开发浏览器插件并且配合eslint