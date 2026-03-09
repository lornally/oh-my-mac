# VS Code macOS 环境问题解决记录

## 问题概述

解决 VS Code 在 macOS 上的多个环境配置问题。

## 具体问题与解决方案

### 问题 1: VS Code 每天提示安装 Code Helper

**现象:** 每天打开 VS Code 都弹窗提示 "An update is ready to install. 'Code' is trying to add new helper tools."

**根本原因:** `/usr/local/bin/code` 符号链接的权限是 `root:wheel`，VS Code 检测到权限不正确，每次都想"修复"它。

**解决方案:**
```bash
sudo chown $(whoami):admin /usr/local/bin/code
```

或重新创建链接：
```bash
sudo rm /usr/local/bin/code
sudo ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
sudo chown $(whoami):admin /usr/local/bin/code
```

---

### 问题 2: `cd` 命令被劫持

**现象:** 在终端执行 `cd 目录名` 后，弹出 "已切换到 DeepSeek" 的提示。

**根本原因:** `~/.zshrc` 中定义了 `alias cd='claude-deepseek'`，把 `cd` 命令劫持用来切换 Claude Code 的 AI 提供商。

**解决方案:**
编辑 `~/.zshrc`，注释掉或删除：
```bash
# alias cd='claude-deepseek'  # 已禁用，避免劫持 cd 命令
```

然后重新加载：
```bash
source ~/.zshrc
```

---

### 问题 3: `kimi` 命令找不到

**现象:** 终端执行 `kimi` 报错 `zsh: command not found: kimi`

**根本原因:** Kimi CLI 已安装在 VS Code 扩展目录，但路径未添加到 PATH。

**解决方案:**
在 `~/.zshrc` 中添加：
```bash
export PATH="/Users/$USER/Library/Application Support/Code/User/globalStorage/moonshot-ai.kimi-code/bin/kimi:$PATH"
```

然后重新加载：
```bash
source ~/.zshrc
```

---

### 问题 4: `kimi term` 报错需要 Python 3.14+

**现象:** 执行 `kimi term` 报错 `Toad dependency is missing. Install kimi-cli with Python 3.14+ to use 'kimi term'.`

**根本原因:** 系统 Python 版本是 3.9.6，而 `kimi term` 功能需要 3.14+。基础 `kimi` 命令不受影响。

**解决方案:** 不影响基础功能，如需使用 `kimi term`，可通过 Homebrew 安装 Python 3.14+。

---

## 快速诊断

使用以下命令快速检查环境状态：

```bash
# 1. 检查 code 命令权限
ls -la /usr/local/bin/code

# 2. 检查是否有命令劫持别名
grep "^alias" ~/.zshrc | grep -E "(cd|code|kimi|claude)"

# 3. 检查 CLI 工具是否在 PATH 中
which kimi
which code

# 4. 检查 Code Helper 进程数量
ps aux | grep "Code Helper" | grep -v grep | wc -l
```

---

## 经验沉淀

已创建 skill `vscode-macos-fix` 用于后续复用：
- 位置: `~/.config/agents/skills/vscode-macos-fix/`
- 包含诊断脚本: `scripts/diagnose.sh`
- 打包文件: `~/.config/agents/skills/vscode-macos-fix.skill`

使用方式：
```bash
# 运行诊断
~/.config/agents/skills/vscode-macos-fix/scripts/diagnose.sh
```

---

## 相关文件

- `re.md` - 问题解决过程记录
- `每天都有这个提示.png` - 问题1截图
- `cd目录claude问题.png` - 问题2截图
- `提示安装.png` - 问题1确认截图
- `机器总是缓慢.png` - CPU 占用截图
