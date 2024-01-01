
# append to bascrc the preconfigured bashrc
cat bashrcmain >> .bashrc

# make nvim appimage
mkddir -p ~/bin
cd ~/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
cd ..

# add to path the nvim appimage
echo "export PATH=$PATH:~/bin" >> .bashrc


# Install nvchad 
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# and add the custom config to nvim
git clone https://github.com/Las02/nvimconfig ~/.config/nvim/lua


