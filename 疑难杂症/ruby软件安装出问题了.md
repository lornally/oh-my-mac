```sh
# 根据提示安装
sudo gem install cocoapods 

# 遇到问题
ERROR:  While executing gem ... (NoMethodError)
    undefined method `satisfied_by?' for nil:NilClass  
# 参考: https://guides.cocoapods.org/using/troubleshooting#installing-cocoapods
sudo gem install -n /usr/local/bin cocoapods

# 搜索CocoaPods  undefined method `satisfied_by?' for nil:NilClass
 gem uninstall cocoapods
# 使用brew gem解决
brew install brew-gem

# 然后安装 cocoapods
brew gem install cocoapods
```

- 还需要修改.zshrc

```sh
# ruby for cocoapods

#export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

#export PATH="/usr/local/opt/ruby/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"
#export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

#If you need to have sqlite first in your PATH, run:
#  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.zshrc

#For compilers to find sqlite you may need to set:
#  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
#  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

#For pkg-config to find sqlite you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"


#If you need to have python@3.8 first in your PATH, run:
#  echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.zshrc

#For compilers to find python@3.8 you may need to set:
#  export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

#For pkg-config to find python@3.8 you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"
#If you need to have m4 first in your PATH, run:
#  echo 'export PATH="/usr/local/opt/m4/bin:$PATH"' >> ~/.zshrc
#If you need to have openssl@1.1 first in your PATH, run:
#  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

#For compilers to find openssl@1.1 you may need to set:
#  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

#For pkg-config to find openssl@1.1 you may need to set:
#  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

```

