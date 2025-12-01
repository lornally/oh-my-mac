# XAMPP 8.1.12 PHP intl 扩展修复方案

## 问题描述
- XAMPP 8.1.12 在 macOS 12 上缺少 `intl.so` 扩展文件
- MediaWiki 1.37 需要 intl 扩展才能正常运行
- Homebrew 在 macOS 12 上支持有限

## 解决方案（基于 Stack Overflow 方法）

### 第一步：复制 ICU 库文件到 XAMPP

已通过 Homebrew 安装的 ICU 库文件位置：`/usr/local/opt/icu4c@78/lib/`

执行以下命令将 ICU 库文件复制到 XAMPP bin 目录：

```bash
# 复制主要的 ICU 库文件
sudo cp /usr/local/opt/icu4c@78/lib/libicudata.78.dylib /Applications/XAMPP/xamppfiles/bin/
sudo cp /usr/local/opt/icu4c@78/lib/libicui18n.78.dylib /Applications/XAMPP/xamppfiles/bin/
sudo cp /usr/local/opt/icu4c@78/lib/libicuio.78.dylib /Applications/XAMPP/xamppfiles/bin/
sudo cp /usr/local/opt/icu4c@78/lib/libicuuc.78.dylib /Applications/XAMPP/xamppfiles/bin/

# 创建符号链接以兼容不同版本
sudo ln -sf /Applications/XAMPP/xamppfiles/bin/libicudata.78.dylib /Applications/XAMPP/xamppfiles/bin/libicudata.dylib
sudo ln -sf /Applications/XAMPP/xamppfiles/bin/libicui18n.78.dylib /Applications/XAMPP/xamppfiles/bin/libicui18n.dylib
sudo ln -sf /Applications/XAMPP/xamppfiles/bin/libicuio.78.dylib /Applications/XAMPP/xamppfiles/bin/libicuio.dylib
sudo ln -sf /Applications/XAMPP/xamppfiles/bin/libicuuc.78.dylib /Applications/XAMPP/xamppfiles/bin/libicuuc.dylib
```

### 第二步：获取 intl.so 扩展文件

由于 XAMPP 8.1.12 没有提供 `intl.so` 文件，我们有几个选项：

#### 选项 A：从其他 PHP 安装复制（推荐）
```bash
# 查找系统中是否有其他 PHP 8.1 的 intl.so
find /usr -name "intl.so" 2>/dev/null
find /opt -name "intl.so" 2>/dev/null
find /System -name "intl.so" 2>/dev/null

# 如果找到，复制到 XAMPP 扩展目录
sudo cp [找到的intl.so路径] /Applications/XAMPP/xamppfiles/lib/php/extensions/no-debug-non-zts-20210902/
```

#### 选项 B：从兼容版本的 XAMPP 获取
```bash
# 下载 XAMPP 7.4.33 (包含完整扩展)
# 从中提取 intl.so 并适配到 8.1 版本
```

#### 选项 C：手动编译（高级用户）
```bash
# 下载 PHP 8.1.12 源码
wget https://github.com/php/php-src/archive/refs/tags/php-8.1.12.tar.gz
tar -xzf php-8.1.12.tar.gz
cd php-src-php-8.1.12/ext/intl

# 编译扩展
/Applications/XAMPP/xamppfiles/bin/phpize
./configure --enable-intl --with-icu-dir=/usr/local/opt/icu4c@78
make
sudo cp modules/intl.so /Applications/XAMPP/xamppfiles/lib/php/extensions/no-debug-non-zts-20210902/
```

### 第三步：修改 PHP 配置

编辑 `/Applications/XAMPP/xamppfiles/etc/php.ini`：

1. 找到第 874 行：`extension=intl`
2. 确保该行没有被注释（没有分号 `;`）
3. 如果暂时无法获取 intl.so，可以临时注释该行：`;extension=intl`

### 第四步：重启 XAMPP 服务

```bash
# 停止 XAMPP
sudo /Applications/XAMPP/xamppfiles/xampp stop

# 启动 XAMPP
sudo /Applications/XAMPP/xamppfiles/xampp start
```

### 第五步：验证修复

1. 访问 `http://localhost/wiki`
2. 检查是否还有 intl 扩展错误
3. 查看 PHP 错误日志：`/Applications/XAMPP/xamppfiles/logs/php_error_log`

## 备用方案

如果上述方案仍然无效：

### 方案 1：降级到 XAMPP 7.4.x
- 下载 XAMPP 7.4.33
- 该版本在 macOS 12 上更稳定
- MediaWiki 1.37 支持 PHP 7.4

### 方案 2：使用 MAMP Pro
- MAMP Pro 对 macOS 12 支持更好
- 内置完整的 PHP 扩展
- 商业软件但更可靠

### 方案 3：Docker 方案
```bash
# 使用 Docker 运行完整的 LAMP 环境
docker run -d -p 80:80 -p 3306:3306 -v /path/to/wiki:/var/www/html mattrayner/lamp:latest-1804
```

## 系统环境信息

- **操作系统**: macOS 12 (Monterey)
- **XAMPP 版本**: 8.1.12
- **PHP 版本**: 8.1.12
- **MediaWiki 版本**: 1.37
- **ICU 版本**: 78.1 (通过 Homebrew 安装)

## 故障排查

### 常见错误及解决方法

1. **库文件权限问题**
   ```bash
   sudo chmod 755 /Applications/XAMPP/xamppfiles/bin/libicu*.dylib
   ```

2. **符号链接失效**
   ```bash
   # 重新创建符号链接
   sudo ln -sf /Applications/XAMPP/xamppfiles/bin/libicudata.78.dylib /Applications/XAMPP/xamppfiles/bin/libicudata.dylib
   ```

3. **扩展路径问题**
   ```bash
   # 验证扩展目录
   php --ini
   ```

## 参考资料

- [Stack Overflow 解决方案](https://stackoverflow.com/questions/tagged/xampp+intl)
- [MediaWiki 系统要求](https://www.mediawiki.org/wiki/Manual:Installation_requirements)
- [PHP intl 扩展文档](https://www.php.net/manual/en/book.intl.php)

## 更新记录

- 2025-11-28: 初始版本，基于 XAMPP 8.1.12 和 macOS 12 的问题分析