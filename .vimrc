syn on        "语法支持
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set termencoding =utf-8
filetype plugin on          "打开万能补齐功能开启文件类型插件
"定义一个快捷方式用来输入当前时间
ia xdate <c-r>=strftime("%Y/%m/%d %H:%M:%S")<cr>
"设置报出当前的文件名
ia myname <c-r>%<cr> 
"设置esc的快捷命令
imap jj <esc>
set ic "设置忽略大小写
"设置字典目录用来设置单词自动补齐
set dictionary+=/usr/share/dict/words
"按 ,ss 打开或关闭英文单词拼写检查
map ,ss :setlocal spell!<cr>
"打开万能补齐功能开启文件类型插件
filetype plugin on
"如果my_proj目录下有写操作就更新一下ctags文件
autocmd BufWritePost ~/my_proj/* !ctags -f ~/my_proj/tags ~/my_proj/*
"用自动运行设置不同文件的tabstop
autocmd FileType c set tabstop=4
autocmd FileType html set tabstop=2
autocmd FileType php set tabstop=2
autocmd FileType css set tabstop=2
autocmd FileType js set tabstop=2
"pathogen 管理插件
execute pathogen#infect()
"ctrlp
let g:ctrlp_map = ',,'
"垂直分屏打开文件
"let g:ctrlp_open_multiple_files = 'v'
""忽略某些文件
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/].(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }
" nerdtree配置
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
