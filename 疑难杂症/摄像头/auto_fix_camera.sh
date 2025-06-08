#!/bin/bash

# 自动修复摄像头占用问题
LOGFILE="camera_fix_log.txt"

log_message() {
    echo "$(date): $1" | tee -a "$LOGFILE"
}

check_camera_status() {
    local vdc_processes=$(lsof | grep VDC | wc -l)
    echo $vdc_processes
}

log_message "=== 开始自动修复摄像头占用问题 ==="

# 1. 记录初始状态
initial_count=$(check_camera_status)
log_message "初始摄像头占用进程数: $initial_count"

if [ "$initial_count" -le 2 ]; then
    log_message "摄像头占用正常（只有系统进程），无需修复"
    exit 0
fi

# 2. 显示当前占用详情
log_message "当前占用摄像头的进程:"
lsof | grep VDC | while read line; do
    pid=$(echo $line | awk '{print $2}')
    process=$(echo $line | awk '{print $1}')
    log_message "  进程: $process (PID: $pid)"
done

# 3. 检查Chrome是否在运行
chrome_pids=$(pgrep -f "Google Chrome")
if [ ! -z "$chrome_pids" ]; then
    log_message "检测到Chrome进程，准备重启..."
    
    # 保存Chrome的当前标签页（如果需要）
    log_message "建议手动保存Chrome标签页后继续"
    
    # 询问用户是否继续
    echo "检测到Chrome正在运行，需要重启Chrome来解决摄像头占用问题"
    echo "这将关闭所有Chrome窗口。是否继续？(y/n)"
    read -r response
    
    if [[ "$response" =~ ^[Yy]$ ]]; then
        log_message "用户确认重启Chrome"
        
        # 关闭Chrome
        log_message "正在关闭Chrome..."
        pkill -f "Google Chrome"
        sleep 3
        
        # 启动优化的Chrome
        log_message "使用优化参数重启Chrome..."
        ./chrome_no_camera.sh
        sleep 2
        
        log_message "Chrome已重启"
    else
        log_message "用户取消Chrome重启"
    fi
fi

# 4. 检查WeChat
wechat_pids=$(pgrep -f "WeChat")
if [ ! -z "$wechat_pids" ]; then
    log_message "检测到WeChat进程"
    echo "检测到WeChat正在使用摄像头，如果不需要视频功能，建议："
    echo "1. 在WeChat设置中禁用摄像头权限"
    echo "2. 或者暂时退出WeChat"
    echo "是否退出WeChat？(y/n)"
    read -r response
    
    if [[ "$response" =~ ^[Yy]$ ]]; then
        log_message "用户确认退出WeChat"
        pkill -f "WeChat"
        log_message "WeChat已退出"
    fi
fi

# 5. 等待并检查结果
sleep 3
final_count=$(check_camera_status)
log_message "修复后摄像头占用进程数: $final_count"

# 6. 显示最终状态
log_message "最终摄像头占用详情:"
lsof | grep VDC | while read line; do
    pid=$(echo $line | awk '{print $2}')
    process=$(echo $line | awk '{print $1}')
    log_message "  进程: $process (PID: $pid)"
done

# 7. 结果评估
if [ "$final_count" -le 2 ]; then
    log_message "✅ 修复成功！摄像头占用已正常"
    echo ""
    echo "🎉 修复成功！"
    echo "现在只有系统必需进程在使用摄像头。"
    echo ""
    echo "建议后续操作："
    echo "1. 使用 ./chrome_no_camera.sh 启动Chrome"
    echo "2. 在系统偏好设置中管理摄像头权限：./camera_permissions.sh"
    echo "3. 定期监控：./camera_monitor.sh"
else
    log_message "⚠️  仍有多个进程占用摄像头"
    echo ""
    echo "⚠️  摄像头仍被多个进程占用"
    echo "可能需要手动操作："
    echo "1. 检查系统偏好设置中的摄像头权限"
    echo "2. 重启相关应用"
    echo "3. 必要时重启系统"
fi

log_message "=== 自动修复完成 ==="
echo ""
echo "详细日志已保存到: $LOGFILE"
