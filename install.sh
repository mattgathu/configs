#! /bin/sh
echo "=== JUMO World Applications Installer ==== "
echo "Update your machines softwares"
xcode-select --install
echo "Installing your browsers chrome and firefox"
brew cask  install --caskroom=/Applications google-chrome firefox
echo "Installing your IDEs"
brew cask  install --caskroom=/Applications pycharm iterm2 sublime-text atom 
echo "Installing your dropbox skype and slack"
brew cask install --caskroom=/Applications dropbox onedrive  skype slack
echo "Installing your virtual machines"
brew cask  install --caskroom=/Applications virtualbox vagrant vagrant-manager
echo "Installing ansible git"
brew cask install --caskroom=/Applications  ansible git vim python python3

echo "Install docker and docker tools"
brew cask install docker-toolbox docker docker-compose 

echo "Installing AWS clients"
brew cask install --caskroom=/Applications  awscli aws-elasticbeanstalk

echo "Installing Others"
brew cask install --caskroom=/Applications  pritunl
