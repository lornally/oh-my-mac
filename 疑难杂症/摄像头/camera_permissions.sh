#!/bin/bash
echo "=== 摄像头权限管理 ==="

# 检查当前Chrome权限（需要手动在系统偏好设置中确认）
echo "请手动检查以下设置："
echo "  系统偏好设置 → 安全性与隐私 → 隐私 → 摄像头"
echo "  建议移除以下应用的摄像头权限："
echo "  - Google Chrome (如果不需要视频通话)"
echo "  - 其他不需要摄像头的应用"
echo ""

# 打开系统偏好设置的摄像头权限页面
echo "是否打开系统偏好设置？(y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    open "x-apple.systempreferences:com.apple.preference.security?Privacy_Camera"
fi
