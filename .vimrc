if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
" fzf
NeoBundle 'junegunn/fzf'
" ruby / rails
NeoBundle 'bbatsov/rubocop'
NeoBundle 'tpope/vim-rails'
" haskell
NeoBundle 'dag/vim2hs'

call neobundle#end()

set number

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" --------------------------------
" 基本設定
" --------------------------------
" vim内部で使われる文字エンコーディングをutf-8に設定する
set encoding=utf-8

" ハイライトを有効化する
syntax enable

" 挿入モードでTABを挿入するとき、代わりに適切な数の空白を使う
set expandtab
