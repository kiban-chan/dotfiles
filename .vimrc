"vi互換モードで動作させない
set nocompatible

"ファイルタイプ有効化
filetype on

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

"---入力設定---
set encoding=utf-8 "文字コード
set virtualedit=onemore "カーソルを行末の1つ先まで移動可能

set autoindent "オートインデント
set tabstop=2 "タブを2スペースで表示
set smartindent "オートインデント
set expandtab "インデントに適切な空白を使用
set shiftwidth=2 "自動入力のインデントを2スペースに
set softtabstop=2
set shiftwidth=0

"ファイルタイプで設定を変える
if has("autocmd")
  autocmd FileType python setlocal tabstop=4 softtabstop=4
  autocmd FileType markdown setlocal tabstop=4 softtabstop=4
endif

"---検索設定---
set ignorecase "大文字/小文字を区別しない
set smartcase "大文字で検索したら小文字を除く
set wrapscan "最後まで検索したら最初に戻る
set hlsearch "強調表示
set incsearch "入力中も検索

"---マウス使用設定---
set mouse=a
set ttymouse=xterm2

"---キーマッピング設定---
"挿入モードでも移動
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-h> <left>
inoremap <C-l> <right>

inoremap <C-c> <Esc>

