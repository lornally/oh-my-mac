

- git

  - 工具会被被brew带上

  - 上传key到github

    ```sh
    ssh-keygen -t rsa -b 4096 -C "machangkun@me.com"
    pbcopy < ~/.ssh/id_rsa.pub
    
  # 新的写法有所不同
    ssh-keygen -t ed25519 -C "your_email@example.com"
  pbcopy < ~/.ssh/id_ed25519.pub  
    ```
  
  - 维护一个git项目, 纯新的mac(mygit) 
  
  ```sh
   git clone git@github.com:lornally/mygit.git
  ```



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