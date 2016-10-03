" 设置项
set history=1000 "记录历史行数
set cursorline "突出当前行
set cursorcolumn "突出当前列
set tabstop=4 "设置tab键为4个空格
set shiftwidth=4 "缩进为4个空格
set fileencoding=utf-8 "设置为UTF-8
set fileformat=unix "unix格式
set number "设置显示行号
set laststatus=2 "总是显示状态栏
set ruler "显示光标当前位置
set hlsearch "高亮显示搜索结果
set backspace=indent,eol,start "设置回退键
set showcmd "设置显示敲击命令
set list listchars=nbsp:·,tab:>·,trail:· "设置显示空格和tab情况
set mouse=a "允许鼠标

" 配置项
syntax enable "开启语法高亮功能
filetype indent on "自适应不同语言的智能缩进

" 检测项
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "打开文件光标定位到上次打开的行
endif

" 快捷键
let mapleader="t" "定义快捷键的前缀，即<Leader>
inoremap kj <ESC> "映射esc键盘
nnoremap t \ "t \ 键位互换
nnoremap \ t "\ t 键位互换
nmap <Leader>qq :q<CR> "定义快捷键关闭当前分割窗口
nmap <Leader>ww :w<CR> "定义快捷键保存当前窗口内容
nmap <Leader>wq :wq<CR> "定义快捷键保存并退出vim
