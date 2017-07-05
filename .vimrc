" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

" sudo apt-get install netatalk **** mac can scan this
" vundle环境设置
" *运行之前需要安装vundle
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" vundle 管理的插件列表必须位于 
" vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS—Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'attn/emmet-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Yggdroot/indentLine'
Plugin 'othree/javascript-libraries-syntax.vim'

" 插件列表结束
call vundle#end()
filetype plugin indent on
" <<<<<

" 定义快捷键前缀，即<Leader>
let mapleader=";"

" 定义快捷键到首行和尾行
nmap LB 0
nmap LE $

" 定义快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 定义快捷键将系统剪切板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>

" 定义快捷键保存所有窗口内容并推出vim
nmap <Leader>WQ :wa<CR>:q<CR>

" 不做任何保存，直接退出vim
nmap <Leader>Q :qa!<CR>

" 依次遍历子窗口
nnoremap nw <C-W><C-W>

" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l

" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h

" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k

" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 配色方案
set background=dark
colorscheme solarized
"colorscheme molokai
"colorscheme phd
 
