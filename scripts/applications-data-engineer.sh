# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing Data R&D Engineer applications"

brew install autoconf
brew install wget
brew install fzf

source ${MY_DIR}/golang.sh

# C tools
brew install ccache
brew install ctags
brew install cmake
brew install cscope
brew cask install clion
brew install ninja

# Docker
brew cask install docker

# Docker Bash Completion
# Reference https://docs.docker.com/docker-for-mac/
pushd /usr/local/etc/bash_completion.d
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
  ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
popd

set -e
