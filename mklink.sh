#!/bin/sh

# ディレクトリパスの取得
repopath=$(cd $(dirname $0); pwd)

# vimrc
ln -sf $repopath/.vimrc $HOME/.vimrc

# tmux.conf
ln -sf $repopath/.tmux.conf $HOME/.tmux.conf

# Vundleが無い場合にcloneする
bundlepath=~/.vim/bundle/Vundle.vim/
if [ ! -e $bundlepath ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo "Vundle is already exist."
fi

# 以前の実施に関わらずvimのプラグインインストールを走らせる
vim +PluginInstall +qall
