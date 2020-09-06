

- git

  - 工具会被被brew带上

  - 上传key到github

    ```sh
    ssh-keygen -t rsa -b 4096 -C "machangkun@me.com"
    pbcopy < ~/.ssh/id_rsa.pub
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

