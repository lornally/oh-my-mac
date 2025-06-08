#!/bin/bash

echo "=== 摄像头占用问题修复脚本 ==="
echo "时间: $(date)"
echo ""

# 1. 显示当前占用情况
echo "1. 当前摄像头占用情况:"
lsof | grep VDC | while read line; do
    pid=$(echo $line | awk '{print $2}')
    process=$(echo $line | awk '{print $1}')
    echo "  进程: $process (PID: $pid)"
done
echo ""

# 2. 检查Chrome的VideoCaptureService
echo "2. 检查Chrome VideoCaptureService进程:"
ps aux | grep "video_capture.mojom.VideoCaptureService" | grep -v grep
echo ""

# 3. 创建Chrome启动脚本（禁用摄像头自动检测）
echo "3. 创建优化的Chrome启动脚本..."
cat > chrome_no_camera.sh << 'EOF'
#!/bin/bash
# Chrome启动脚本 - 禁用自动摄像头检测
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --disable-background-timer-throttling \
  --disable-background-networking \
  --disable-default-apps \
  --disable-extensions \
  --disable-sync \
  --disable-translate \
  --no-default-browser-check \
  --no-first-run \
  --disable-features=MediaDevicesDispatcherHost \
  --disable-web-security \
  --use-fake-ui-for-media-stream \
  --use-fake-device-for-media-stream &
EOF

chmod +x chrome_no_camera.sh
echo "  已创建 chrome_no_camera.sh"

# 4. 创建摄像头权限检查脚本
echo "4. 创建摄像头权限管理脚本..."
cat > camera_permissions.sh << 'EOF'
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
EOF

chmod +x camera_permissions.sh
echo "  已创建 camera_permissions.sh"

# 5. 创建进程终止脚本（谨慎使用）
echo "5. 创建进程管理脚本..."
cat > kill_camera_processes.sh << 'EOF'
#!/bin/bash
echo "=== 强制释放摄像头进程 ==="
echo "警告：这将强制关闭占用摄像头的进程"
echo "确认要继续吗？(y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "正在终止Chrome VideoCaptureService..."
    pkill -f "video_capture.mojom.VideoCaptureService"
    
    echo "等待3秒..."
    sleep 3
    
    echo "检查结果:"
    lsof | grep VDC
    
    echo "如果摄像头仍被占用，可能需要重启相关应用"
fi
EOF

chmod +x kill_camera_processes.sh
echo "  已创建 kill_camera_processes.sh"

echo ""
echo "=== 解决方案总结 ==="
echo "已创建以下脚本："
echo "  1. chrome_no_camera.sh - 使用此脚本启动Chrome避免摄像头占用"
echo "  2. camera_permissions.sh - 管理系统摄像头权限"
echo "  3. kill_camera_processes.sh - 强制释放摄像头（谨慎使用）"
echo ""
echo "建议操作步骤："
echo "  1. 运行 ./camera_permissions.sh 检查并调整系统权限"
echo "  2. 关闭当前Chrome，使用 ./chrome_no_camera.sh 重新启动"
echo "  3. 如果问题仍存在，使用 ./kill_camera_processes.sh"
echo ""
echo "长期解决方案："
echo "  - 在Chrome中禁用不必要的扩展"
echo "  - 在系统偏好设置中移除Chrome的摄像头权限（如不需要视频通话）"
echo "  - 考虑使用其他浏览器进行非视频相关的浏览"
