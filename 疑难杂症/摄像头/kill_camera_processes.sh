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
