
# Make copy of .config and .tmux.conf
mv ~/.config ~/.config.bck
mv ~/.tmux.conf ~/.tmux.conf.bck

# And move mine in
mv .config ~/.config
mv .tmux.conf ~/.tmux.conf

# append to bascrc the preconfigured bashrc 
echo "#---- ADDED -----" >> ~/.bashrc
cat bashrcmain >> ~/.bashrc

# make nvim appimage
mkdir ~/bin
(cd ~/bin && curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && mv nvim.appimage nvim)
chmod u+x ~/bin/nvim


# add to path the nvim appimage
echo "export PATH=$PATH:~/bin" >> ~/.bashrc


# Install nvchad 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# and add the custom config to nvim
git clone https://github.com/Las02/nvimconfig ~/.config/nvim/lua/custom

echo "#---- END-ADDED -----" >> ~/.bashrc

# npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install 8.0.0

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode

# TODO automate
echo "ADD THE FOLLOING TO .zshrc: plugins+=(zsh-vi-mode)"


