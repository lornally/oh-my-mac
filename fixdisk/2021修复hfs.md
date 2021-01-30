###### 尝试的内容

- hfsfuse, 并没有什么卵用
- testdisk, 虽然可以brew安装, 
  - 但是, 也没有什么卵用
  - 但是, 大神说有用
  - https://www.cgsecurity.org/wiki/TestDisk
  - testdisk官方推荐: https://www.cgsecurity.org/wiki/PhotoRec

###### 一般方法

1. disk utility

2. diskutil

   ```
   diskutil verifyVolume /dev/rdisk2
   diskutil repairvolume /dev/rdisk2
   ```

3. fsck

   ```
   
   ```

   



###### hfsfuse 

- 这个项目很傻, 直接用源文件不行的. 必须用release的zip包才行
- 甚至于直接用tar.gz的包都不可以, 当然也可能这个包是不必编译, 可以直接使用的.

命令:

```sh
sudo hfsfuse --force -o noatime /dev/disk2 /Users/bergman/Downloads/hfsd
```

###### testdisk

- 选择rdisk而不是disk, 这样能快一点.

```sh

sudo pdisk /dev/rdisk2
```



###### 参考文档

- 这里的方法主要是hfsfuse, 没啥卵用, https://swissmacuser.ch/hfs-volume-data-recovery-diskutility-could-not-mount-error-49153/
- testdisk的方法: https://perrohunter.com/repair-a-mac-os-x-hfs-partition-table/
- 一般性的方法: https://www.datanumen.com/blogs/5-tips-repair-corrupted-hierarchical-file-system-hfs-volume-mac/