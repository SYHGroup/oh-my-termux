#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage
apt update
apt install -y git zsh
git clone git://github.com/simonsmh/oh-my-termux.git
if [ -d "$HOME/.termux" ]; then
 mv $HOME/.termux $HOME/.termux.bak
fi
mv oh-my-termux/.termux $HOME/.termux
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
chsh -s zsh
echo Done!
exit
