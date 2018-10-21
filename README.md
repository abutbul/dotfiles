# dotfiles
## about
personal packaging of important dot files - needs overhaul
## usage
```
mkdir ~/repositories
cd ~/repositories/
git clone https://github.com/abutbul/dotfiles.git
cd dotfiles
./dotdep_vim.sh
./dotdep_tmux.sh
```
## todo
* one line installation via sh
* functionalize ```dotdep_``` files to make standard deployment steps more efficiently handled and maintained
* add more important files

## installation
use either of the following methods to enable powerline customized fonts, should you want to use it with any plugin. (I Do)
install fonts
1. method 1 (local)
```
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
FONTLOC=~/.fonts/
FONTCON=~/.fontconfig/
mkdir $FONTCON
mkdir $FONTLOC
cp 10-powerline-symbols.conf $FONTCON
cp PowerlineSymbols.otf $FONTLOC
sudo fc-cache -vf $FONTLOC
```
2. method 2 (global)
```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
```

3.method 3 (local)
```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```
