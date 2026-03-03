# 海康 2TB SSD 修复计划（重启后）

## 当前状态
- **设备**: `/dev/disk7s2` (之前是 disk4s2)
- **卷名**: 2T海康CG视频
- **格式**: Apple_HFS (HFS+ 日志式)
- **状态**: 未挂载
- **问题**: 编录损坏，fsck 会卡死

---

## 新计划：尝试删除损坏的系统目录后修复

### 原理
之前的 fsck 在编录遍历阶段卡死，可能是因为：
- `.fseventsd` 损坏
- `.Spotlight-V100` 损坏
- `.DocumentRevisions-V100` 损坏

如果能可写挂载并删除这些目录，可能让 fsck 恢复正常。

---

### 步骤 1: 尝试强制可写挂载（不触发 fsck）

```bash
# 创建挂载点
sudo mkdir -p /tmp/haikang

# 强制可写挂载，禁用日志回放
sudo mount -t hfs -o rw,-j=no /dev/disk7s2 /tmp/haikang
```

**可能结果**:
- ✅ 成功 → 进入步骤 2 删除损坏目录
- ❌ 失败（触发 fsck 卡死）→ 进入备选方案

---

### 步骤 2: 删除损坏的系统目录（如果挂载成功）

```bash
# 进入挂载点
cd /tmp/haikang

# 删除可能导致问题的系统目录
sudo rm -rf .fseventsd
sudo rm -rf .Spotlight-V100
sudo rm -rf .DocumentRevisions-V100
sudo rm -rf .TemporaryItems
sudo rm -rf .Trashes

# 清理 Spotlight 索引
sudo rm -rf .DS_Store
```

---

### 步骤 3: 正常卸载并重新挂载测试

```bash
# 卸载
sudo diskutil unmountDisk /dev/disk7

# 尝试正常挂载
sudo diskutil mount /dev/disk7s2

# 检查是否能正常访问
ls -la /Volumes/2T海康CG视频/
```

---

### 步骤 4: 如果正常挂载成功，运行急救验证

```bash
# 验证文件系统
diskutil verifyDisk /dev/disk7

# 如果有错再修复
diskutil repairDisk /dev/disk7
```

---

## 备选方案（如果步骤 1 失败）

### 备选 A: 只读挂载 + 复制数据后抹盘
```bash
# 只读挂载
sudo mount -t hfs -o rdonly /dev/disk7s2 /tmp/haikang

# 复制重要数据到电脑（分批，利用 162G 空间）
cp -r /tmp/haikang/重要文件夹 /Users/bergman/Desktop/

# 复制完成后抹盘
sudo diskutil eraseDisk APFS "2T海康CG视频" /dev/disk7
```

### 备选 B: 使用 DiskWarrior
如果上述都失败，需要专业工具 DiskWarrior 重建编录。

---

## 执行记录

| 步骤 | 命令 | 状态 | 结果 |
|-----|------|------|------|
| 1 | 强制可写挂载 | ✅ | 成功，使用 `mount_hfs -j` |
| 2 | 删除系统目录 | ✅ | 删除 `.fseventsd` 和日志文件 `.journal` |
| 3 | 重新挂载测试 | ✅ | 正常挂载，可读写访问 |
| 4 | 急救验证 | ✅ | fsck_hfs 通过，"volume appears to be OK" |

---

**准备开始执行步骤 1？**
