#!/bin/sh

# ディレクトリパスの取得
repopath=$(cd $(dirname $0); pwd)

# bashrc
ln -sf $repopath/.bashrc $HOME/.bashrc

# vimrc
ln -sf $repopath/.vimrc $HOME/.vimrc

# tmux.conf
ln -sf $repopath/.tmux.conf $HOME/.tmux.conf

