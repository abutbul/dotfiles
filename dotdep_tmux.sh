if [ ! -d ~/.tmux/plugins/tpm ]
then 
	mkdir -p ~/.tmux/plugins/
	ln -s ~/repositories/tpm ~/.tmux/plugins/
fi
if [ ! -f ~/.tmux.conf ]
then
	ln -s ~/repositories/dotfiles/.tmux.conf ~/
fi
mkdir -p ~/.config/systemd/user/ #should be fixed to not require this in future versions of tmux
tmux source ~/.tmux.conf
