# for youcomplete me required: cmake, python headers
if [ ! -d ~/.vim/bundle/ ]
then 
	mkdir -p ~/.vim/bundle/
	ln -s ~/repositories/Vundle.vim ~/.vim/bundle/
fi
if [ ! -f ~/.vimrc ]
then
	ln -s ~/repositories/dotfiles/.vimrc ~/
fi
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.py
echo "vim + plugins installed"
