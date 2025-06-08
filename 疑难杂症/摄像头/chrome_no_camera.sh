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
