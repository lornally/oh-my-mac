* 20:24
  你这个配置不对的:
  // .vscode/settings.json
{
  "files.exclude": {
    "**/.git": true,
    "**/__pycache__": true,
    "**/.venv": true,
    "**/venv": true,
    "**/.pytest_cache": true,
    "**/.mypy_cache": true,
    "**/*.pyc": true,
    "**/.DS_Store": true
  },
  "files.watcherExclude": {
    "**/.git/**": true,
    "**/__pycache__/**": true,
    "**/.venv/**": true,
    "**/venv/**": true,
    "**/.pytest_cache/**": true,
    "**/.mypy_cache/**": true,
    "**/技术/**": true
  },
  "search.exclude": {
    "**/技术": true  这里肯定不对, 3万个文件, 不代表他不是我要搞的内容. 你要具体分析
  }
}

并且, 我可以提供技术栈给你, 你看看配置要怎么写?
* python pyside
* js coffee
* ruby
* c qt
* rust
* 其他的你在 技术 目录里面看, 你列个计划, 把技术目录遍历一下, 并且要生成遍历文档, 以便全面的了解我的技术栈, 从而合理的配置两个exclude参数. 你搞个计划, 然后逐步搞. 记住要全面, 可以搞很久.



* 20:56
*     // 日志（通常不需要搜索）
    "**/log": true,  # 这个排除了 log目录
    "**/*.log": true # 这个排除了 log文件

* 这2条配置会不会误伤: 日志log.md