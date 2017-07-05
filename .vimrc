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

" 定义快捷键前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on

" 根据侦测到不同类型加载对应的插件
filetype plugin on

" 定义快捷键到首行和尾行
nmap LB 0
nmap LE $

" 定义快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 定义快捷键将系统剪切板内容粘贴至vim
nmap <Leader>p "+p
