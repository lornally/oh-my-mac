



| 命令               | 字符数 | 说明      |
| :----------------- | :----- | :-------- |
| `git reset HEAD~1` | 18     | 标准写法  |
| `git reset HEAD^`  | 17     | 省 1 字符 |
| `git reset @~1`    | 15     | 省 3 字符 |
| `git reset @^`     | 14     | 最简      |
| `grh1`（自定义）   | 4      | 最推荐    |

```sh
# 查看别名
alias | grep git

# 添加别名
code ~/.zshrc
alias grh1='git reset HEAD~1'
alias grh2='git reset HEAD~2'

# 回退之后, 新建分支
git checkout -b feature/new-design
gcb claud5
```

