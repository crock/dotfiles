export PATH="/usr/local/bin:$HOME"

alias ls=exa

# DEFAULT NODE PATH
export NVM_DIR=~/.nvm
export NODE_PATH=~/.nvm/versions/node/v8.11.4/bin/node
source $(/usr/local/bin/brew --prefix nvm)/nvm.sh

# Homebrew MySQL 5.7
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# Composer
export PATH="/Users/croc/.composer/vendor/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
