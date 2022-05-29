## Environment variables, process limits go  here. ##
export LANG="en_US.UTF-8"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
# Add packages installed globally through npm to path.
export PATH=$PATH:/usr/local/Cellar/node/15.5.1/bin
# Add mongodb binaries to path.
export PATH=/usr/local/opt/mongodb-macos-x86_64-4.4.4/bin:$PATH
# Add java jdk 11 for ghidra.
export PATH=/usr/local/opt/jdk-11.0.12+7/Contents/Home/bin:$PATH
# Created by `pipx` on 2022-05-21 18:00:36
export PATH="$PATH:/Users/Julian/.local/bin"

# To be able to execute ruby scripts with ruby command.
eval "$(rbenv init -)"

# To run jekyll.
export SDKROOT=$(xcrun --show-sdk-path)
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH=/Users/Julian/.gem/ruby/3.1.0/bin:$PATH

# .bashrc is not executed per default during login. 
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

