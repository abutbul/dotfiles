#be in ~/repositories
mkdir ~/repositories/
cd ~/repositories/
#bring usual suspects
#dependency dotfiles git
git clone git@github.com:abutbul/dotfiles.git && echo "should call dot files deployment script here"
git clone https://github.com/boxcutter/windows.git windows-boxes 
git clone https://github.com/tmux-plugins/tpm tpm && chmod +x ~/repositories/dotfiles/dotdep_tmux.sh && ~/repositories/dotfiles/dotdep_tmux.sh
