" -----------------------------------------------------------------------------
"  < Vundle ������� >
" -----------------------------------------------------------------------------
set nocompatible        " be iMproved  
filetype off            " required
" ���ð���vundle�ͳ�ʼ����ص�runtime path
" �жϲ���ϵͳ����
if(has('win32') || has('win64'))
    set rtp+=$VIM\vimfiles\bundle\Vundle.vim
    let path='$VIM\vimfiles\bundle'
else
    set rtp+=~/.vim/bundle/Vundle.vim
    let path='~/.vim/bundle'
endif
call vundle#begin(path)
" ��һ��ѡ��, ָ��һ��vundle��װ�����·��
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle
"Bundle 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'skywind3000/asyncrun.vim'
" My Bundles here:
" original repos on github
" github�ϵ��û�д�Ĳ����ʹ�������û���+repo���Ƶķ�ʽ
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
"1.PowerLine��� ״̬����ǿչʾ
Bundle 'Lokaltog/vim-powerline'
    "vim��һ��״̬�� ����powline��������״̬��
    set laststatus=2
    set t_Co=256
    let g:Powline_symbols='fancy'
Bundle 'majutsushi/tagbar'
    let g:tagbar_ctags_bin='ctags'          "ctags�����·��
    let g:tagbar_width=30               "���ڿ�ȵ�����
    nmap tl :Tagbar<CR>
Bundle 'fholgado/minibufexpl.vim'
    let g:miniBufExplMapWindowNavVim = 1   
    let g:miniBufExplMapWindowNavArrows = 1   
    let g:miniBufExplMapCTabSwitchBufs = 1   
    let g:miniBufExplModSelTarget = 1  
    let g:miniBufExplMoreThanOne=0
Bundle 'scrooloose/nerdtree'
map wm :NERDTreeMirror<CR>
map wm :NERDTreeToggle<CR>
" vim-scripts repos
" vimscripts��repoʹ������ĸ�ʽ��ֱ���ǲ������
""Bundle 'L9'
"Bundle 'SuperTab'
"Bundle 'vimwiki'
"Bundle 'winmanager'
"Bundle 'bufexplorer.zip'
""Bundle 'The-NERD-Commenter'
"Bundle 'matrix.vim--Yang'
"Bundle 'FencView.vim'
"Bundle 'Conque-Shell'
"Bundle 'Vimpress'
Bundle 'Mark'
    " -----------------------------------------------------------------------------
    "  < Mark--Karkat��Ҳ���� Mark ������� >
    " ����ͬ�ĵ��ʸ�����������ͬ�ı���ʱ�����ã���ϸ������ :h mark.txt
    " -----------------------------------------------------------------------------
    set viminfo+=!                     " ����ȫ�ֱ���
    let g:mwAutoSaveMarks = 1
    let g:mwAutoLoadMarks = 1
    nmap <F3> \*
"Bundle 'Markdown'
"Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'a.vim'
Bundle 'Raimondi/delimitMate'
"Bundle 'snipMate'
" non github reposo
" ��github�Ĳ��������ֱ��ʹ����git��ַ
" Bundle 'git://git.wincent.com/command-t.git'
" ...
"git interface
Plugin 'tpope/vim-fugitive'
"filesystem
""Plugin 'jistr/vim-nerdtree-tabs'
""Plugin 'kien/ctrlp.vim' 
"html
"  isnowfy only compatible with python not python3
""Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
"python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
"auto-completion stuff
""Plugin 'klen/python-mode'
"Plugin 'Valloric/YouCompleteMe'
""Plugin 'klen/rope-vim'
""Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
""code folding
Plugin 'tmhedberg/SimpylFold'
"Colors!!!
""Plugin 'altercation/vim-colors-solarized'
""Plugin 'jnurmine/Zenburn'
" ������в����Ҫ����������֮ǰ
call vundle#end()            " ����
filetype plugin indent on    " ���� ����vim�Դ��Ͳ����Ӧ���﷨���ļ�������ؽű�
" ���Ӳ���ı�����,����ʹ���������:
"filetype plugin on
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" vundle��Ҫ������������ĸ��������BundleInstall��ȫ�����°�װ��BundleInstall!���Ǹ���
" һ�㰲װ���������Ϊ����BundleSearchһ�������Ȼ�����б���ѡ�У���i��װ
" ��װ��֮����vimrc�У����Bundle 'XXX'��ʹ��bundle�ܹ����أ���������ͬʱ���
" ��Ҫ������������Ҳ����vimrc�����ü���
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" ���·�������֧�ֲ�ͬ��ʽ�Ĳ����װ.
" �뽫��װ����������vundle#begin��vundle#end֮��.
" Github�ϵĲ��
" ��ʽΪ Plugin '�û���/����ֿ���'
"Plugin 'tpope/vim-fugitive'
" ���� http://vim-scripts.org/vim/scripts.html �Ĳ��
" Plugin '�������' ʵ������ Plugin 'vim-scripts/����ֿ���' ֻ�Ǵ˴����û�������ʡ��
"Plugin 'L9'
" ��Git֧�ֵ�����github�ϵĲ���ֿ� Plugin 'git clone ����ĵ�ַ'
"Plugin 'git://git.wincent.com/command-t.git'
" ���ص�Git�ֿ�(�����Լ��Ĳ��) Plugin 'file:///+���ز���ֿ����·��'
"Plugin 'file:///home/gmarik/path/to/plugin'
" ����ڲֿ����Ŀ¼��.
" ��ȷָ��·����������runtimepath. ���·��������sparkup/vimĿ¼��
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" ����������ͻ,����L9�Ѵ���,�����ָ��
"Plugin 'user/L9', {'name': 'newL9'}
"
" ��Ҫ�����ĵ�
" :PluginList       - �г����������õĲ��
" :PluginInstall    - ��װ���,׷�� `!` ���Ը��»�ʹ�� :PluginUpdate
" :PluginSearch foo - ���� foo ; ׷�� `!` ������ػ���
" :PluginClean      - ���δʹ�ò��,��Ҫȷ��; ׷�� `!` �Զ���׼�Ƴ�δʹ�ò��
"
" ���� :h vundle ��ȡ����ϸ�ں�wiki�Լ�FAQ
" �����Լ��Էǲ��Ƭ�η�������֮��
"
"
"
set autochdir
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
language messages zh_CN.UTF-8
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936 
set encoding=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom,euc-jp,
behave mswin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '"' . $VIMRUNTIME . '\diff"'
      let eq = '""'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
 silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"һ���趨
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gvim�������趨
set guifont=Consolas:h13
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��Ҫʹ��vi�ļ���ģʽ������vim�Լ���
set nocompatible
"history�ļ�����Ҫ��¼������
set history=100
"�ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set confirm
"��windows���������
set clipboard+=unnamed
"����ļ�����
filetype on
"�����ļ����Ͳ��
filetype plugin on
"Ϊ�ض��ļ�����������������ļ�
filetype indent on
"����ȫ�ֱ���
set viminfo+=!
set viminfo='1000,f1,<100
"�������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-
"�﷨����
set nu!
syntax enable
syntax on
"color zenburn
"color desertEx
"colorscheme desert
"colo peachpuff 
colorscheme murphy
"�����ַ������䲻��100������
"":highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
"":match OverLength '\%101v.*'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�ļ�����
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��Ҫ�����ļ��������Լ���Ҫȡ�ᣩ
set nobackup
"��Ҫ����swap�ļ�����buffer��������ʱ��������
setlocal noswapfile
set bufhidden=hide
"�ַ���������������Ŀ
set linespace=0
"��ǿģʽ�е��������Զ���ɲ���
set wildmenu
"��״̬������ʾ�������λ�õ��кź��к�
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
"�����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=2
"ʹ�ظ����backspace����������indent, eol, start��
set backspace=2
"������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0
"�ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set fillchars=vert:\ ,stl:\ ,stlnc:\
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"������ƥ��
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"������ʾƥ�������
set showmatch
"ƥ�����Ÿ�����ʱ����λ��ʮ��֮һ�룩
set matchtime=5
"��������ʱ����Դ�Сд
set ignorecase
"��Ҫ�����������ľ��ӣ�phrases��
set nohlsearch
"������ʱ������Ĵʾ�����ַ�����������firefox��������
set incsearch
"����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
set scrolloff=3
"��Ҫ��˸
set novisualbell
"�ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
""set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%Y-%m-%d\ \%H:%M\")}\ %{''.(&fenc!=''?&fenc:&enc).''}\ %{(&bomb?\",BOM\":\"\")}
"������ʾ״̬��
""set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�ı���ʽ���Ű�
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�Զ���ʽ��
set formatoptions=tcrqn
"�̳�ǰһ�е�������ʽ���ر������ڶ���ע��
set autoindent
"ΪC�����ṩ�Զ�����
set smartindent
"ʹ��C��ʽ������
set cindent
"�Ʊ��Ϊ4ͳһ����Ϊ4
set tabstop=4
set softtabstop=4
set shiftwidth=4
"�ÿո�����Ʊ��
set expandtab
"��Ҫ����
set nowrap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��Ҫ��ʾ�۵���
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ֻ�������ļ����ͱ���⵽��ʱ����ʾ�кţ���ͨ�ı��ļ�����ʾ
if has("autocmd")
    autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
    autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
    autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
    autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
    autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe " normal g`\"" |
      \ endif
endif "has("autocmd")
"F5���������C����F6���������C++����
"��ע�⣬����������windows��ʹ�ûᱨ��
"��Ҫȥ��./�������ַ�
"ȥ����  
""nnoremap <F2> :g/^\s*$/d<CR> 
"C�ı��������
map <F5> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'python'
        exec "!python %"
    endif
endfunc
map <F6> :call CompileOnly()<CR>
func! CompileOnly()
    exec "w"
    if &filetype == 'c'
        exec "AsyncRun gcc % -o %<"
    elseif &filetype == 'cpp'
        exec "AsyncRun g++ % -o %<"
    elseif &filetype == 'python'
        exec "AsyncRun python %" 
    endif 
endfunc
map <F7> :call RunAsync()<CR>
func! RunAsync()
    exec "w"
    if &filetype == 'c'
        exec "AsyncRun gcc % -o %<"
    elseif &filetype == 'cpp'
        exec "AsyncRun g++ % -o %<"
    elseif &filetype == 'python'
        exec "!start python %"
    endif 
endfunc
"������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile * setfiletype txt
"ӳ��<F11>������
map <F11> :call CallTags() <CR>
func! CallTags()
	exec "w"
	"exec "! ctags -R --c++-kinds=+p --fields=+iaS --extra=+q"
	exec "! ctags -R %"
	exec "set tags+=tags"
endfun
"�½�.c,.h,.sh,.java�ļ����Զ������ļ�ͷ 
autocmd BufNewFile *.c,*.sh,*.cpp,*.java,*.py exec ":call SetTitle()" 
"�½��ļ����Զ���λ���ļ�ĩβ 
autocmd BufNewFile * normal G
"���庯��SetTitle���Զ������ļ�ͷ 
func SetTitle()
""call setline(1, "//********************************************************************") 
""call append(0, "// Time: ".strftime("%c")) 
""call append(0, "// Description: ") 
""call append(0, "// File Name: ".expand("%")) 
if &filetype == 'cpp' 
call append(1, "#include <iostream>") 
call append(2, "using namespace std;") 
call append(3, "int main(void)") 
call append(4, "{ ") 
call append(5, "    return 0;")
call append(6, "}")
call append(5, " ")
call append(3, " ")
call append(2, " ")
elseif &filetype == 'c' 
call append(1, "#include <stdio.h>") 
call append(2, " ") 
call append(3, "int main()") 
call append(4, "{") 
call append(5, "    return 0;")
call append(6, "}") 
call append(5, " ") 
elseif &filetype == 'java' 
call append(1, "public class ".expand("%<").expand("{")) 
call append(2, "  public static void main(String[] args)") 
call append(3, "  {") 
call append(4, "       System.out.println();")
call append(5, "  }") 
call append(6, "}") 
call append(4, " ") 
call append(2, " ") 
elseif &filetype == 'python' 
call append(0,"# -*- coding: utf-8 -*-")
call append(1,"# !/usr/local/bin/python")
call append(2, "# Time: ".strftime("%c")) 
call append(3, "# Description:") 
call append(4, "# File Name: ".expand("%")) 
call append(5,"")
endif 
endfunc
"�ÿո���������۵�
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>
"�Զ���ȫ����
set tags+=tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guioptions-=m
set guioptions-=T
set guioptions-=L
"set guioptions-=r
set guioptions-=B
set guioptions-=e
set guioptions+=c
"map <silent> <F4> :if &guioptions =~# 'T' <Bar>
""winpos 450 235
set lines=33 columns=100
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"gvim���Ժ����
au GUIEnter * simalt ~x
"when started as "evim",evim.vim will already have done these settings
if v:progname =~? "evim"
    finish
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"״̬����ɫ
""highlight StatusLine guifg=SlateBlue guibg=Yellow
""highlight StatusLineNC guifg=Gray guibg=White
"����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l
"����������ʽƥ�����"
function! KeepLines(pattern)
    let pattern = a:pattern
    let hits = []
    exec '%s/' . pattern . '/\=add(hits, submatch(0))/ge'
    let str = join(hits, "\n") . "\n"
    %d
    put! = str
endfunction
command! -nargs=1 KeepLines call KeepLines(<f-args>)
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
""�Դﵽ��ʣ��Ĵ��ڶ������ļ��༭����ʱ���Զ��˳�vim
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
au BufNewFile,BufRead *.py,*.pyw setf python
set ofu=syntaxcomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim


if has('multi_byte_ime')  
 "δ����IMEʱ��걳��ɫ  
 hi Cursor guifg=bg guibg=Orange gui=NONE  
 "����IMEʱ��걳��ɫ  
 hi CursorIM guifg=NONE guibg=Skyblue gui=NONE  
 " �ر�Vim���Զ��л�IME���뷨(����ģʽ�ͼ���ģʽ)  
 set iminsert=0 imsearch=0  
 " ����ģʽ���뷨״̬δ����¼ʱ��Ĭ�Ϲر�IME  
 "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>  
endif  


let $PYTHONUNBUFFERED=1
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim 
