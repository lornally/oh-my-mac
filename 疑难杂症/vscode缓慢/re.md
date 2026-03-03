
* 19:53
vscode的缓慢是工作区问题吗? 和插件有关吗? 能检查下吗?
有人建议, 项目里有 node_modules - 加到 .vscode/settings.json 的 files.exclude, 我是不是应该在user的setting里面干这个?

* 20:08
  * watcherExclude 和 exclude 有什么区别?
  * 你的3个建议, 我有疑问:
  
1. **增加文件监视器限制**（如果是大项目）：
   ```
   # 检查当前限制
   launchctl limit maxfiles
   ```
   这个有啥用, 然后呢?

1. **禁用不必要的语言功能**：
   - Settings 中搜索 `@builtin` 查看内置扩展
   - 禁用不用的语言支持
  这个咋搞? 为啥我啥都没搜索出来呢? 

1. **使用 VS Code 的 Perf Profile**：
   - `Cmd+Shift+P` → "Toggle Developer Tools" → Performance 标签
  这个我打开了, 然后呢?

顺便说一句, 这个文件你可以直接反馈, 但是, 不能删除我的任何输入.


* 20:15
| 配置项                 | 作用                                                       |
| :--------------------- | :--------------------------------------------------------- |
| `files.exclude`        | **决定文件是否显示在资源管理器**中，也会影响搜索           |
| `files.watcherExclude` | **决定文件是否被监听变化**，VS Code 不会监视这些目录的改动 |


1. 那么watcherExclude 和 exclude 是不是应该完全一致? 或者说watcherExclude的内容要大于exclude才对, 你为啥是反的? 你看下我的project目录: /Users/bergman/X/oh-my-project 这是我的最典型的目录, 看看我要如何写这两个参数: 


// .vscode/settings.json
{
  "files.exclude": {
    "**/node_modules": true,
    "**/.git": true,
    "**/dist": true,
    "**/build": true,
    "**/.next": true
  },
  "files.watcherExclude": {
    "**/node_modules/**": true,
    "**/.git/objects/**": true
  }
}

2. launchctl limit maxfiles 现在确实是256, 但是, 这个会导致vscode缓慢吗? 
3. @builtin 要在 Extensions 面板的搜索框里, 同样的疑问, 这个会导致缓慢吗?


