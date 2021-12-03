原因是给vscode改了个名字, 原本她的名字很长, 而我们大家都称呼他vscdoe, 所以为啥不知行合一呢?

- 但是, 因为code其实用的软连接, 所以code命令就失灵了.

```sh
sudo ln -fs "/Applications/VS Code.app/Contents/Resources/app/bin/code" /usr/local/bin/
# 注意这里vscode.app的地址要正确
```

- 也可以通过setting解决: "terminal.integrated.shell.osx": "/bin/zsh"
- 还可以用命令面板解决

```sh
shift cmd p #呼出面板
Shell Command: Install 'code' command in PATH #搜索这个
```

- 也可以命令行或者直接修改zshrc

```sh
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# 这个也可以
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
# 这个也行
code() {
   open -a Visual\ Studio\ Code.app $1
}
```

