- git

  - 工具会被被brew带上
- 为了顺畅处理大文件, 需要安装这个:
  
  ```sh
  brew install git-lfs # 为了顺畅处理大文件, 需要安装这个.
  ```
  
  - 上传key到github

```sh
ssh-keygen -t rsa -b 4096 -C "307012389@qq.com"
pbcopy < ~/.ssh/id_rsa.pub

# 新的写法有所不同
ssh-keygen -t ed25519 -C "your_email@example.com"
pbcopy < ~/.ssh/id_ed25519.pub  
```

  - 维护一个git项目, 纯新的mac(mygit) 

```sh
git clone git@github.com:lornally/mygit.git
```

###### 配置示例

```ini
[user] 
	name = bergman
	email = machangkun1984@qq.com
[core]
	excludesfile = /Users/bergman/.gitignore_global
	editor = mate --wait
	quotepath = false
# [branch "master"] #pull的时候, 用rebase取代merge
# 	rebase = true
[difftool "sourcetree"]
	cmd = opendiff \"$LOCAL\" \"$REMOTE\"
	path = 
[mergetool "sourcetree"]
	cmd = /Applications/Sourcetree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
	trustExitCode = true
[commit]
	template = /Users/bergman/.stCommitMsg
[pull]
	rebase = true
```

###### gitignore

1. 可以在用户目录下创建 ~/.gitignore，然后用命令引入这个ignore文件.

   ```sh
   git config --global core.excludesfile ~/.gitignore #需要执行, 来使得它生效
   ```

2. 也可以在 ~/.gitconfig 配置 .gitignore文件, 比如:

   ```ini
   [user]
      name = xiaoronglv
      email = xxxxx@gmail.com
   [push]
      default = matching
   [core]
      excludesfile = ~/.gitignore
      # ~ 可能会有问题, 因此要用下面这种形式, 记得要改用户的地址为真实地址
      excludesfile = /Users/machangkun/.gitignore_global
   ```

3. 项目里面弄一个gitignore文件是比较好的方式, 全局文件在有多个磁盘的时候, 是失效的.

###### 项目

稍微列举一下需要拿下来的git项目:

```sh
git clone git@github.com:mdn/webextensions-examples.git
git clone https://github.com/dracula/macdown.git
```

我的项目本身也形成了一个git项目: oh-my-project

###### 列举几个常用功能

```sh
# git设置默认分支和默认推送
gl origin main
git branch -M main
git push -u origin main

### 查看文件变动
# gaa之前, 查看待提交内容
gd
#gaa之后, gcam之前.
gdca 
#git commit之后
gsps #git show --pretty=short --show-signature
    #下面这两个是等效的
    gd @^
    gd @~ 
    #这里面 ~=^, @=HEAD
    gd HEAD~2 # 这个是本尊.
    g show #等于上面这个.
```

参考: https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet