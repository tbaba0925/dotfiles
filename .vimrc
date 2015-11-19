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

call neobundle#end()

set number

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on
au BufRead,BufNewFile *.md set filetype=markdown
