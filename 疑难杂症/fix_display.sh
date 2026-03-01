#!/bin/bash
# 紧急修复 macOS 显示器闪烁/自动关闭问题

echo "=== 正在修复显示器问题 ==="

# 1. 禁用显示器睡眠
echo "[1/7] 禁用显示器睡眠..."
sudo pmset -a displaysleep 0
sudo pmset -a sleep 0

# 2. 禁用自动亮度
echo "[2/7] 禁用自动亮度调节..."
defaults write com.apple.BezelServices kDimTime -int 300000

# 3. 重置 NVRAM 设置相关的显示偏好
echo "[3/7] 重置显示偏好..."
defaults delete com.apple.WindowServer 2>/dev/null
defaults delete com.apple.windowserver 2>/dev/null

# 4. 杀掉显示相关进程
echo "[4/7] 重启显示服务..."
sudo killall -9 WindowServer 2>/dev/null || echo "WindowServer 将在重启后刷新"

# 5. 清理显示器缓存
echo "[5/7] 清理显示器缓存..."
sudo rm -f /Library/Preferences/com.apple.windowserver.plist 2>/dev/null
sudo rm -f ~/Library/Preferences/ByHost/com.apple.windowserver*.plist 2>/dev/null

# 6. 重启 Dock
echo "[6/7] 重启 Dock..."
killall -9 Dock 2>/dev/null

# 7. 关闭节能功能
echo "[7/7] 关闭节能功能..."
sudo pmset -a powernap 0
sudo pmset -a standby 0
sudo pmset -a autorestart 0

echo ""
echo "=== 修复完成 ==="
echo "如果问题仍然存在，请尝试:"
echo "1. 拔掉外接显示器电源线，等10秒再插上"
echo "2. 换一根线或换一个接口连接显示器"
echo "3. 重启电脑"
echo ""
echo "如果还不行，执行: sudo nvram -c 然后重启"
