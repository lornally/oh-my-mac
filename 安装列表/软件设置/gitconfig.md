```sh
code ~/.gitconfig
# 修改config
[user]
 email = catalina@17mbp.com # 你的邮箱, 不需要真实性, 但是要能够做区分
 name = m的17寸mbp # 你的名字, 同上
[core]
  quotepath =false # 解决中文路径问题
  editor = mate -w # 设置默认编辑器, 注意此处一定要-w, 不然shell不等待编辑器返回, 最近在才开始有这个问题.
[pull]
 rebase = true # 这样pl就是 fetch + rebase
[alias]
track-large = "!git st --porcelain --ignore-submodules | grep -v 'D ' | cut -b4- | sed -n 's/\\(\\(.* -> \\)\\|\\)\\(.\\)/\\3/p' | xargs -I{} find {} -size +300k | xargs -I{} git lfs track {}"
# 设置editor可能会不生效, 检查下mate的设置里面的terminal项目重新安装一下, 然后用命令行:
 git config --global core.editor mate
```