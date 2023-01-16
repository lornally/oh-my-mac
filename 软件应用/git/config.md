

[core]
  quotepath =false
  editor = mate --wait



[pull]
	rebase = true


[remote "origin"]
	url = git@codeup.aliyun.com:5f17b582df9df74e36afafdf/algorithm/mapshow.git
	fetch = +refs/heads/*:refs/remotes/origin/*
	pushDefault = origin
[branch "main"]
	remote = origin
	merge = refs/heads/main
[branch "m"]
	remote = origin
	merge = refs/heads/main
[pull]
	rebase = true

[filter "lfs"]
	process = git-lfs filter-process
	required = true
	clean = git-lfs clean -- %f
	smudge = git-lfs smudge -- %f


[lfs]
	repositoryformatversion = 0
[lfs "https://codeup.aliyun.com/5f17b582df9df74e36afafdf/algorithm/pdc3.git/info/lfs"]
	locksverify = false
 

[alias]
track-large = "!git st --porcelain --ignore-submodules | grep -v 'D ' | cut -b4- | sed -n 's/\\(\\(.* -> \\)\\|\\)\\(.\\)/\\3/p' | xargs -I{} find {} -size +1000k | xargs -I{} git lfs track {}"
