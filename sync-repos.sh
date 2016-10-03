#be in ~/repositories
cd ~/repositories/
#bring usual suspects
git clone https://github.com/boxcutter/windows.git windows-boxes && mkdir ~/vagrant-temp; ln -s windows-boxes ~/vagrant-temp/windows-boxes
git clone git@github.com:abutbul/dotfiles.git && echo "should call dot files deployment script here"
git clone https://github.com/tmux-plugins/tpm tpm && ln -s tpm ~/.tmux/plugins/tpm
