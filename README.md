> 拿到一台新mac很开心, 但是干啥啥不行, 因为还需要做一系列的配置,  这里是一个新mac需要的所有内容, 项目的终极目标是类似oh-my-zsh一样, 提供一个一键搞定的方案. 目前还在努力....

###### 安装

- 参考: 安装列表
- 注意: 由于最近四大件chrome brew github zsh 都会有各种访问困难, 因此请先参考系统增强/科学上网.

###### 科学上网的设置

参考: 科学上网

###### git

参考: git

##### 隐藏文件

- 显示所有隐藏文件的快捷键
  - 注意dvorak布局有时候会失效, 因此karabiner是王道

```
CMD + SHIFT + .
```

- mac的隐藏文件都是用[.]开头的, 因此在[隐藏的配置文件]这个文件夹中的文件都需要放到[~]文件夹下面.

```sh
cd ~
#或者在finder也可以操作
#copy文件那些文件在这里
#在文件头部加上小数点: .  此时应该是显示隐藏文件的状态, 不然mac会提示风险并拒绝这个操作.
```

###### mac配置

1. icloud,  要点: 检查勾选情况, 因为某些勾勾, 苹果会在不同的版本随机取消. 

2. 搜索范围, 这是finder的设置.

3. icloud同步很慢, 急着用的记得走git.

   ```sh
    git clone git@github.com:lornally/mygit.git
   ```

4. 自带输入法太坑了, 必须用搜狗

5. karabaner还是需要的, 因为各种快捷键dvorak失灵.

###### 搜狗输入法

- 去掉几乎所有的快捷键.
- 选项调到9.
- 背景用深色

###### 流氓启动项

某些软件特别流氓, 流氓到他并不显示在 系统偏好设置->用户与群组->启动项目 里面, 而是在下面这个位置

```
/Library/LaunchAgents/
adobe特别流氓, 因此, 删除之后立刻重启
可以用finder的前往文件夹到达这个文件, 快捷键: shift-cmd-g  这个恐怕是最没有性价比的快捷键了, 完全没有第二个地方支持这个快捷键.
```

###### vscode

参见vscode.md

###### 预览

参见quicklook文件夹

###### js开发

nvm/node

```sh
brew install nvm
mkdir ~/.nvm
#修改.zshrc配置. 目前已经copy到配置文件里面了.
```

```sh
 nvm install node
```

###### eslint

参见eslint.md


###### 针对老的苹果

- 针对老苹果的文档: [老苹果咋办]

### 参考

- 不错的blog: https://www.igeeksblog.com/
