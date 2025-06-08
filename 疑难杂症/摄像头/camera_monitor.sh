#!/bin/bash

# 摄像头占用监控脚本
echo "=== 摄像头占用情况监控 ==="
echo "时间: $(date)"
echo ""

echo "当前占用摄像头的进程:"
lsof | grep VDC | while read line; do
    pid=$(echo $line | awk '{print $2}')
    process=$(echo $line | awk '{print $1}')
    echo "  进程: $process (PID: $pid)"
done

echo ""
echo "=== 进程详细信息 ==="
pids=$(lsof | grep VDC | awk '{print $2}' | sort -u | tr '\n' ',' | sed 's/,$//')
if [ ! -z "$pids" ]; then
    ps -p $pids -o pid,ppid,comm,args
fi

echo ""
echo "=== 检查Chrome进程 ==="
ps aux | grep -i chrome | grep -v grep

echo ""
echo "=== 检查WeChat进程 ==="
ps aux | grep -i wechat | grep -v grep

echo ""
echo "=== 系统摄像头状态 ==="
system_profiler SPCameraDataType 2>/dev/null | grep -A5 "Camera"
