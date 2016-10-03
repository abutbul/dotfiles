#be in ~/repositories
mkdir ~/repositories/
cd ~/repositories/
#bring usual suspects
#dependency dotfiles git
git clone git@github.com:abutbul/dotfiles.git && echo "should call dot files deployment script here, instead of per repo"
git clone https://github.com/boxcutter/windows.git windows-boxes # no action, install vagrant make box add box init
git clone https://github.com/tmux-plugins/tpm tpm && chmod +x ~/repositories/dotfiles/dotdep_tmux.sh && ~/repositories/dotfiles/dotdep_tmux.sh 
echo "don't forget to <keybind>+I to finalize"
git clone https://github.com/VundleVim/Vundle.vim.git && chmod +x ~/repositories/dotfiles/dotdep_vim.sh && ~/repositories/dotfiles/dotdep_vim.sh
#setting up omz with 9k powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# wget variant for omz sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#install fonts
#method 1 (local)
#wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#FONTLOC=~/.fonts/
#FONTCON=~/.fontconfig/
#mkdir $FONTCON
#mkdir $FONTLOC
#cp 10-powerline-symbols.conf $FONTCON
#cp PowerlineSymbols.otf $FONTLOC
#sudo fc-cache -vf $FONTLOC
#
#method 2 (global)
#wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
#sudo mv PowerlineSymbols.otf /usr/share/fonts/
#sudo fc-cache -vf
#sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
#
#method 3 (local)
#wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
#mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
#fc-cache -vf ~/.fonts
#mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

