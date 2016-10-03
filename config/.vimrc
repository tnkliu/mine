" 设置项
let mapleader="t" "定义快捷键的前缀，即<Leader>
set history=1000 "记录历史行数
set cursorline "突出当前行
"set cursorcolumn "突出当前列
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
set mouse=v "允许鼠标还有可以设置成mouse=a,设置成v可以鼠标选择后直接复制到剪切板
set nocompatible "关闭兼容模式，去掉有关vi一致性模式，避免以前版本的bug和局限

" 配置项
syntax enable "开启语法高亮功能
filetype plugin on "根据侦测到的不同类型加载对应的插件
filetype indent on "自适应不同语言的智能缩进

" 检测项
"打开文件光标定位到上次打开的行
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"最大化窗口
function! Zoom ()
	"check if is the zoomed state (tabnumber > 1 && window == 1)
	if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
		let l:cur_winview = winsaveview()
		let l:cur_bufname = bufname('')
		tabclose
		"restore the view
		if l:cur_bufname == bufname('')
			call winrestview(cur_winview)
		endif
	else
		tab split
	endif
endfunction

" 快捷键
inoremap kj <ESC> "映射esc键盘
nnoremap t \ "t \ 键位互换
nnoremap \ t "\ t 键位互换
nmap <Leader>qq :q<CR> "定义快捷键关闭当前分割窗口
nmap <Leader>ww :w<CR> "定义快捷键保存当前窗口内容
nmap <Leader>wq :wq<CR> "定义快捷键保存并退出vim
nmap <leader>zz :call Zoom()<CR> "最大化窗口对应上面的Zoom函数
"复制到剪切板
vmap <Leader>yy "+y
vmap <C-c> "+y
"从剪切板中粘贴
nmap <Leader>pp "+p
nmap <C-v> "+p

" 风格设置
colorscheme molokai

" 插件管理
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'fatih/vim-go' "Golang
"Plugin 'Valloric/YouCompleteMe' "YCM
Plugin 'scrooloose/nerdtree' "查看工程文件
Plugin 'Lokaltog/vim-easymotion' "快速移动
Plugin 'fholgado/minibufexpl.vim' "书签导航
Plugin 'kien/ctrlp.vim' "快速搜索
Plugin 'yonchu/accelerated-smooth-scroll' "滚屏
Plugin 'vim-airline/vim-airline' "更强些的状态栏风格
Plugin 'jistr/vim-nerdtree-tabs' "标签加强
Plugin 'airblade/vim-gitgutter' "版本控制标记
Plugin 'CodeFalling/fcitx-vim-osx' "解决MAC下输入法切换问题
call vundle#end()

" 插件配置
source ~/.vim/config/vim-go
source ~/.vim/config/nerdtree
source ~/.vim/config/tagbar
