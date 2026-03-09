---
name: vscode-macos-fix
description: Fix common macOS VS Code environment issues including 'Code Helper' installation prompts, PATH configuration problems, command not found errors, and shell configuration conflicts. Use when users report (1) VS Code repeatedly asking to install Code Helper/command line tools, (2) commands like 'kimi', 'claude', or 'code' not found in terminal, (3) shell aliases hijacking standard commands like 'cd', or (4) general VS Code performance issues on macOS.
---

# VS Code macOS Environment Fix

This skill diagnoses and fixes common VS Code environment issues on macOS.

## Quick Diagnostic

Run this to identify all issues at once:

```bash
curl -fsSL https://raw.githubusercontent.com/mckay/fix-scripts/main/vscode-macos-diagnose.sh | bash
```

Or check manually:

```bash
# 1. Check code command permissions
ls -la /usr/local/bin/code

# 2. Check shell aliases
grep "^alias" ~/.zshrc | grep -E "(cd|code|kimi|claude)"

# 3. Check PATH for CLI tools
echo $PATH | tr ':' '\n' | grep -E "(kimi|claude|code)"

# 4. Check running VS Code processes
ps aux | grep "Code Helper" | wc -l
```

## Common Issues & Fixes

### Issue 1: VS Code Keeps Asking to Install Code Helper

**Symptom:** Dialog appears saying "An update is ready to install. 'Code' is trying to add new helper tools."

**Root Cause:** `/usr/local/bin/code` is owned by `root` instead of the current user.

**Fix:**
```bash
# Remove old link
sudo rm /usr/local/bin/code

# Recreate with correct ownership
sudo ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
sudo chown $(whoami):admin /usr/local/bin/code
```

### Issue 2: Command Not Found (kimi, claude, etc.)

**Symptom:** `zsh: command not found: kimi`

**Root Cause:** CLI tool path not in PATH.

**Fix:** Add to `~/.zshrc`:
```bash
# Kimi CLI
export PATH="/Users/$USER/Library/Application Support/Code/User/globalStorage/moonshot-ai.kimi-code/bin/kimi:$PATH"

# Claude CLI (if installed via VS Code)
export PATH="/Users/$USER/.claude:$PATH"
```

Then reload: `source ~/.zshrc`

### Issue 3: Shell Alias Hijacking Commands

**Symptom:** Typing `cd` triggers something else (like Claude mode switch).

**Root Cause:** Alias defined in shell config, e.g., `alias cd='claude-deepseek'`

**Fix:** Comment out or remove the alias in `~/.zshrc`:
```bash
# Find the alias
grep "alias cd" ~/.zshrc

# Edit to comment it out
# alias cd='claude-deepseek'
```

Then reload: `source ~/.zshrc`

### Issue 4: High CPU from Code Helper Processes

**Symptom:** Multiple "Code Helper (Plugin)" processes consuming high CPU.

**Potential Causes:**
- Too many extensions enabled
- Large workspace without proper exclusions
- Extension conflicts

**Fix Steps:**
1. Check extensions: `code --list-extensions`
2. Disable unnecessary extensions in VS Code
3. Add `.vscode/settings.json` to exclude large directories:

```json
{
  "files.exclude": {
    "**/__pycache__": true,
    "**/node_modules": true,
    "**/.venv": true,
    "**/.git": true
  },
  "files.watcherExclude": {
    "**/__pycache__/**": true,
    "**/node_modules/**": true,
    "**/.venv/**": true
  }
}
```

## Diagnostic Script

Use `scripts/diagnose.sh` to automatically detect issues.

## Prevention Checklist

After fixing, ensure:
- [ ] `ls -la /usr/local/bin/code` shows current user ownership
- [ ] `which kimi` returns a valid path
- [ ] `alias | grep cd` shows no hijacking aliases
- [ ] `.vscode/settings.json` excludes large directories
