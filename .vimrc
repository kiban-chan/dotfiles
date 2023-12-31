" vi互換モードで動作させない
set nocompatible

inoremap <C-c> <Esc>

" エンコード
set encoding=utf-8
scriptencoding utf-8 " set encodingの後に記述
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

"ファイルタイプ有効化
filetype on
filetype plugin indent on

"---表示設定---
set number "行番号の表示
set title "ファイル名表示
set showmatch "対応するカッコを表示
set laststatus=2 "ステータスを表示
set ruler "カーソル位置の表示
set list "空白の可視化
set listchars=tab:>-,trail:. "タブを>---で，スペースを.で表示
syntax enable "色
set showcmd "コマンドの表示
set whichwrap=b,s,h,l,<,>,[,],~ "カーソルの左右で行の移動が可能に
set cursorline " カーソルラインのハイライト
set wildmenu "コマンドモードの補完
set history=5000 "保存するコマンド履歴数

"---入力設定---
set virtualedit=onemore "カーソルを行末の1つ先まで移動可能
set autoindent "オートインデント
set tabstop=2 "タブを2スペースで表示
set smartindent "オートインデント
set expandtab "インデントに適切な空白を使用
set shiftwidth=2 "自動入力のインデントを2スペースに
set softtabstop=2
set shiftwidth=0

"ファイルタイプで設定を変える
augroup vimrc
  autocmd!
  autocmd FileType markdown setlocal tabstop=4 softtabstop=4
  autocmd FileType python setlocal tabstop=4 softtabstop=4
  autocmd FileType make setlocal noexpandtab nosmarttab
augroup END

"---検索設定---
set ignorecase "大文字/小文字を区別しない
set smartcase "大文字で検索したら小文字を除く
set wrapscan "最後まで検索したら最初に戻る
set hlsearch "強調表示
set incsearch "入力中も検索

" ビープ音設定
set belloff=all

" モードでカーソル変える
if has('vim_starting')
  let &t_SI .= "\e[5 q"
  let &t_EI .= "\e[1 q"
  let &t_SR .= "\e[3 q"
endif

