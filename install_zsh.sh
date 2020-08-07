set -xeuo pipefail

sudo apt install --yes zsh
sudo apt-get install --yes powerline fonts-powerline

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc

sudo chsh -s /bin/zsh $USER
/bin/zsh
