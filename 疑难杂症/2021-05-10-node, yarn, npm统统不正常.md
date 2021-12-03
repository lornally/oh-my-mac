1. 可能不该用brew安装yarn, 因此卸载, 重来.
2. 参考自己的博文: 2020-11-04-node,npm和eslint的安装.md



###### 一次安装

```sh
# 0. 清理掉之前安装的node和yarn, 用
brew uninstall
# 重新安装node
brew install node
# 用npm安装yarn 和eslint
 cnpm install -g eslint 
 cnpm install -g yarn
```

> 这个世界清净了, yarn和eslint都不能用brew!!!

###### 并不是

- 血淋淋的教训, 不要vscode的terminal, 那个货不正常

###### 还不是

- 是因为这个工作目录从原本的mac->移动硬盘->另一台mac->u盘->这台mac
- 所以目录没有权限了

###### 还不是

- 可能就纯粹是@remax/plugin-sass版本不对

###### 竟然都不对

```sh
# 按照这个顺序就OK了.
yarn add -D node-gyp
yarn add -D sass
yarn add -D node-sass

# 但是到这里不OK了.
yarn add -D @remax/plugin-sass

# 下面这些几百米的大刀就没用上
sudo npm install --unsafe-perm -g node-sass
sudo npm install --unsafe-perm -g node-sass
sudo yarn add -D node-sass

# 然后依旧不行, 兔脚说, 要有ruby, sass才正常, 启发了我
brew install sass/sass/sass
```

###### 可能是最终结论

- node要装LTS版本
- 现在LTS是14
- brew自动装16
- 乖乖从官网安装吧: https://nodejs.org/en/

> 最终结论node一定要用LTS!!!

