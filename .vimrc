" vi互換モードで動作させない
set nocompatible

"ファイルタイプ有効化
"filetype on
filetype off

" ---Pluginの設定---
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ---以下にプラグインを列挙
" Vundleが入ってない場合は以下のコマンドでｲﾝｽｺ
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 追記したら`$vim +PluginInstall +qall`を実行してｲﾝｽｺ
" mklink.shで上二つが実行される

" いろんな言語のsyntaxとかindent
Plugin 'sheerun/vim-polyglot'

" filetreeを表示
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/nerd-fonts'
Plugin 'jistr/vim-nerdtree-tabs'

" いい感じのステータスバー
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vimからgit操作
Plugin 'tpope/vim-fugitive'

" gitの追加/削除/変更を表示
Plugin 'airblade/vim-gitgutter'

" markdownで表を作りたいときのPlugin
Plugin 'mattn/vim-maketable'

" helpの日本語化
"Plugin 'vim-jp/vimdoc-ja'

call vundle#end()
filetype plugin indent on

" helpの日本語化
"set helplang=ja

" ---NERDTree設定
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1
" leaderキーのデフォルトは`/`らしいがよく分からん
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeWinPos = "left"

" ---vim-airline設定
let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
"なんかエラー出るのでコメントアウト
"let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1


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
augroup vimrc
  autocmd!
  autocmd FileType markdown setlocal tabstop=4 softtabstop=4
  autocmd FileType python setlocal tabstop=4 softtabstop=4
augroup END

"---検索設定---
set ignorecase "大文字/小文字を区別しない
set smartcase "大文字で検索したら小文字を除く
set wrapscan "最後まで検索したら最初に戻る
set hlsearch "強調表示
set incsearch "入力中も検索

"---マウス使用設定---
"set mouse=a
set ttymouse=xterm2

"---キーマッピング設定---
"挿入モードでも移動
" 挿入モード時にCtrl+hで削除できなくなるのでOFF
"inoremap <C-j> <down>
"inoremap <C-k> <up>
"inoremap <C-h> <left>
"inoremap <C-l> <right>

inoremap <C-c> <Esc>

" ビープ音設定
set belloff=all

"---カラースキーム設定---
colorscheme darkblue

