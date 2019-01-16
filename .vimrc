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
" git
NeoBundle 'tpope/vim-fugitive'
" js
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'othree/yajs.vim'
NeoBundle 'othree/es.next.syntax.vim'

" html5
NeoBundle 'othree/html5.vim'

" jsx
NeoBundle 'maxmellon/vim-jsx-pretty'

" 括弧を自動的に閉じる
NeoBundle 'Townk/vim-autoclose'

" markdown
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

" nerd-tree
NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" markdown の設定
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'

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

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=2
set shiftwidth=2

" 大文字小文字を区別しない設定
set ignorecase
set smartcase

" バッファ操作
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
  if 0 == a:0
    let l:arg = "."
  else
    let l:arg = a:1
  endif
  execute "%! jq \"" . l:arg . "\""
endfunction "
