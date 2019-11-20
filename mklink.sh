#!/bin/sh
repopath=$(cd $(dirname $0); pwd)

ln -sf $repopath/.vimrc $HOME/.vimrc

