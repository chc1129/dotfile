"---------------------------------------
" Vim 設定
"---------------------------------------
"---------------------------------------
" 基本設定
"---------------------------------------
" 高度なインデント
set smartindent
" タブが対応する空白数
set tabstop=2
" インデントでずれる幅
set shiftwidth=2
" タブの代わりに空白を挿入
set expandtab
" 行番号を表示
set number
" ステータス行を常に表示
set laststatus=2
" コマンドラインの行数
"set cmdheight=3 なぜかvimが死ぬのでコメントアウト
" 再描画しない
set lazyredraw
" 不可侵文字を表示
set list
set listchars=tab:>\"
" 最低でも上下に表示する行数
set scrolloff=5
" 入力したコマンドを画面下に表示
"set scrolloff=5 上と一緒
" 自動折り返ししない
set textwidth=0
" コマンドライン補完
set wildmenu
" コマンドライン補完の方法
set wildmode=longest:full,full
" コマンド履歴の保存数
set history=2000
" バックアップ取らない
set nobackup
" スワップファイル作らない
set noswapfile
" 編集中でも他のファイルを開けるようにする
set hidden
" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start
" ビープ音をならさない
set vb t_vb=
" カーソルを行頭, 行末で止まらない
set whichwrap=b,s,h,l,<,>,[,]
" コマンドをステータス行に表示
set showcmd
" 現在のモードを表示
set showmode
" windowsとクリップボードを共有化
set clipboard+=unnamed
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" ウインドウタイトルを設定する
set title
" 閉じカッコが入力されたとき, 対応するカッコを表示する
set showmatch
" 暗い背景色に合わせた配色にする
set background=dark
" マルチバイト文字があってもカーソルがズレないようにする
set ambiwidth=double
" vimを終了してもundoの記録を残す
set undofile undodir=~/.vimundo












"------------------------------------------------------------------------------
"" 検索設定
"------------------------------------------------------------------------------
"" ハイライトで検索
set hlsearch
" 大文字小文字を無視
set ignorecase
" インクリメンタル検索
set incsearch
" 大文字が入力されたら大文字小文字を区別する
set smartcase
" 検索結果を中央に表示
map n nzz
map N Nzz
map * *zz
map # #zz
" 行末まで検索したら行頭に戻る
set wrapscan












"------------------------------------------------------------------------------
"" キーマップ設定
"------------------------------------------------------------------------------
"" カーソを表示行で移動する
nnoremap h <Left>
nnoremap j gj
nnoremap k gk
nnoremap l <Right>

nnoremap <Down> gj
nnoremap <Up>   gk


nnoremap gj j
nnoremap gk k

" 保存はwq, q!派なので,ZZ,ZQは無効化
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>


" 行頭,行末移動
noremap <Space>h ^
noremap <Space>l $
nnoremap <Space>/ *

" 自動でカッコ内に移動
inoremap {} {}
inoremap [] []
inoremap () ()
inoremap “” “”
inoremap ” ”
inoremap <> <>
inoremap “ “


" インサートモードをjjで抜ける
inoremap <silent> jj <ESC>



"------------------------------------------------------------------------------
" 最後のカーソル位置を復元する
"------------------------------------------------------------------------------
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif




"------------------------------------------------------------------------------
" 行末の空白文字をハイライト
"------------------------------------------------------------------------------
augroup HighlightTrailingSpaces
    autocmd!
    autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=darkgreen ctermbg=darkgreen
    autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END







"------------------------------------------------------------------------------
" 保存時に行末のスペースを削除
"------------------------------------------------------------------------------
augroup rtrim
    function! RTrim()
        let s:cursor = getpos(".")
        $s/\s+$//e
        call setpos(".", s:cursor)
    endfunction
    autocmd BufWritePre * call RTrim()
augroup END








"------------------------------------------------------------------------------
" 現在日時を入力
"------------------------------------------------------------------------------
nmap <C-o><C-o> <ESC>i<C-r>=strftime("%Y/%m/%d %H:%M:%S")<ESC><ESC>






"------------------------------------------------------------------------------
" カレント行ハイライト
"------------------------------------------------------------------------------
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE





"------------------------------------------------------------------------------
" Plugin Bundles
"------------------------------------------------------------------------------
if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/dein.vim



"------------------------------------------------------------------------------
" colorsceme
"------------------------------------------------------------------------------
"colorscheme molokai
colorscheme greeen
set t_Co=256




"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/macUser/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/macUser/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('scrooloose/nerdtree')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------






