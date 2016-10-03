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
