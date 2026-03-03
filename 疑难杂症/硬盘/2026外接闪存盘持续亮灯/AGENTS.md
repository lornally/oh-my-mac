# AGENTS.md - 外接存储设备问题诊断

## 核心原则：验证优先于猜测

**绝不瞎猜，所有结论必须有数据来源。**

---

## 我的错误总结

### 1. 硬件类型瞎猜（致命错误）
- **错误**：默认假设为机械硬盘，**没有通过命令验证**
- **应该做的**：
  ```bash
  # 通过系统命令确认硬件类型
  diskutil info /dev/diskX | grep "Solid State"
  system_profiler SPStorageDataType
  ```
- **结论**：不知道就问，或者用命令查，不要猜

### 2. 技术知识瞎猜（致命错误）
- **错误**：说"转化 APFS = 抹盘"，**没有先搜索验证**
- **应该做的**：
  ```
  不确定的时候 → 立即搜索 "macos convert hfs to apfs without erasing"
  ```
- **验证来源**：Apple 官方文档、man page、`diskutil apfs convert --help`

---

## 验证清单（遇到类似问题必须执行）

### 硬件信息验证
```bash
# 确认设备类型
system_profiler SPStorageDataType SPUSBDataType SPNVMeDataType
diskutil info /dev/diskX | grep -E "Solid State|Device Location"
```

### 技术知识验证（不确定时立即搜索）
- 格式转换是否丢数据？→ 搜索官方文档
- 这个症状通常原因？→ 搜索技术社区
- 这条命令的作用？→ 先看 man page

---

## 外接存储设备问题诊断流程

### Step 1: 信息收集（必须验证，不能猜测）
```
□ 设备类型：通过 system_profiler 确认 SSD/机械盘
□ 当前格式：通过 diskutil info 确认
□ 使用场景：询问用户
□ 数据重要性：询问用户
□ 当前状态：通过 diskutil list / df -h 确认
```

### Step 2: 症状处理

#### 指示灯狂闪 + 无法退出
```bash
# 验证谁在占用
sudo lsof +D /Volumes/卷名

# 关闭 Spotlight（如果是索引问题）
sudo mdutil -i off /Volumes/卷名
sudo pkill mds mds_stores

# 强制卸载
diskutil unmountDisk force /dev/diskX
```

#### 访问极慢
```bash
# 验证文件系统
diskutil verifyDisk /dev/diskX
```

### Step 3: 修复决策

```
verifyDisk 结果？
├── 无错误 → 可能是 Spotlight/进程占用
└── 有错误 → 先备份 → repairDisk

需要转换格式？
├── 先搜索验证 "macos apfs convert without data loss"
└── 确认用户已备份
```

---

## 禁止行为

1. ❌ **猜测硬件类型** → 必须用命令验证
2. ❌ **猜测技术细节** → 必须搜索验证
3. ❌ **凭记忆说"肯定"** → 不确定就说"我需要验证一下"

---

## 快速验证命令参考

```bash
# 磁盘信息
diskutil list
diskutil info /dev/diskX
system_profiler SPStorageDataType

# 谁在占用磁盘
sudo lsof +D /Volumes/卷名

# SSD 健康
smartctl -a /dev/diskX  # 需安装 smartmontools

# Spotlight 状态
mdutil -s /Volumes/卷名
```
