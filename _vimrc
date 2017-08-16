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
"������ģʽ������wm��Tlist��WM
set showcmd
set noic
let OmniCpp_DefaultNamespace= ["std"]
let OmniCpp_GlobalScopeSearch = 1  " 0 or 1
let OmniCpp_NamespaceSearch = 2   " 0 ,  1 or 2
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
map <F4> :e .<CR>
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
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
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%Y-%m-%d\ \%H:%M\")}\ %{''.(&fenc!=''?&fenc:&enc).''}\ %{(&bomb?\",BOM\":\"\")}
"������ʾ״̬��
set laststatus=2
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
"CTags���趨
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"����Taglist
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"��������趨���������,����taglist��ctags·��
let Tlist_Ctags_Cmd = 'C:\ctags\ctags.exe'
"��ͬʱ��ʾ����ļ��� tag ��ֻ��ʾ��ǰ�ļ���
let Tlist_Show_One_File=1
"��� taglist ���������һ�����ڣ����˳� vim
let Tlist_Exit_OnlyWindow=1
"�õ�ǰ�����༭���ļ��ķ����б��Զ��۵����� 
let Tlist_File_Fold_Auto_Close=1
"��taglist���ڷ�����Ļ���Ҳ࣬ȱʡ����� 
let Tlist_Use_Right_Window=1 
"��ʾtaglist�˵�
let Tlist_Show_Menu=1
"����vim�Զ���taglist
"let Tlist_Auto_Open=1
"""""""""""""""""""""""""""""""
"" winManager setting
"""""""""""""""""""""""""""""""
"���ý���ָ�
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
""let g:winManagerWindowLayout = "TagList|NERDTreeToggle"
"����winmanager�Ŀ�ȣ�Ĭ��Ϊ25
let g:winManagerWidth = 30
"����򿪹ر�winmanager����
nmap wm :WMToggle<cr>
"
"������������
let Tlist_Sort_Type = "name"
"ѹ����ʽ
let Tlist_Compart_Format = 1
"���ֻ��һ��buffer��kill����Ҳkill��buffer
let Tlist_Exist_OnlyWindow = 1
"��Ҫ�ر������ļ���tags
let Tlist_File_Fold_Auto_Close = 0
"��Ҫ��ʾ�۵���
let Tlist_Enable_Fold_Column = 0
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
nnoremap <F2> :g/^\s*$/d<CR> 
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
"����Java������Զ���ȫ
au FileType java setlocal omnifunc=javacomplete#Complete
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
call append(1,"#!/usr/local/bin/python")
call append(2, "#Time: ".strftime("%c")) 
call append(3, "#Description: ") 
call append(4, "#File Name: ".expand("%")) 
call append(5," ")
endif 
endfunc
"�ÿո���������۵�
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>
"minibufexpl�����һ������
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"Tree explorer������
let g:treeExplVertical=1
let g:treeExplWinSize=30
"�Զ���ȫ����
set completeopt=longest,menu 
set tags+=tags
set tags+=C:\ctags\tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:inoremap <S-ENTER> <c-r>=SkipPair()<CR>
:inoremap <S-SPACE> <ESC>la
:inoremap <C-ENTER> <ESC>A;<CR>
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { <c-r>=ClsoeBrace()<CR>
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap ;; <ESC>A;<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function ClosePair(char)
   if getline('.')[col('.') - 1] == a:char
      return "\<Right>"
   else
      return a:char
   endif
endf
function Semicolon()
   "echo getline('.')[col('.')]
   if getline('.')[col('.')] == ')'
      return "<ESC>A;"
   elseif getline('.')[col('.')] == '}'
      return "\<ESC>A;"
   elseif getline('.')[col('.')] == ']'
      return "\<ESC>A;"
   else
      return ";"
   endif
endf
function SkipPair()
   if getline('.')[col('.') - 1] == ')'
      return "\<ESC>o"
   else
      normal j
      let curline = line('.')
      let nxtline = curline
      while curline == nxtline
         if getline('.')[col('.') - 1] == '}'
            normal j
            let nxtline = nxtline + 1
            let curline = line('.')
            continue
         else
            return "\<ESC>i"
         endif
      endwhile
      return "\<ESC>o"
   endif
endf
function ClsoeBrace()
   if getline('.')[col('.') - 2] == '='
      return "{}\<ESC>i"
   elseif getline('.')[col('.') - 3] == '='
      return "{}\<ESC>i"
   elseif getline('.')[col('.') - 1] == '{'
      return "{}\<ESC>i"
   elseif getline('.')[col('.') - 2] == '{'
      return "{}\<ESC>i"
   elseif getline('.')[col('.') - 2] == ','
      return "{}\<ESC>i"
   elseif getline('.')[col('.') - 3] == ','
      return "{}\<ESC>i"
   else
      return "{\<ENTER>}\<ESC>O"
   endif
endf
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
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
"����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l
"""""""""""""""""""""""""python ��ȫ"""""""""""""""""""""""""
let g:pydiction_location = 'C:\Program Files (x86)\Vim\vim80\tools\pydiction\complete-dict'
function! KeepLines(pattern)
    let pattern = a:pattern
    let hits = []
    exec '%s/' . pattern . '/\=add(hits, submatch(0))/ge'
    let str = join(hits, "\n") . "\n"
    %d
    put! = str
endfunction
command! -nargs=1 KeepLines call KeepLines(<f-args>)
"PYTHON�﷨���"
if has("gui_running") 
     highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif

au BufNewFile,BufRead *.py,*.pyw setf python
set ofu=syntaxcomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python runtime! autoload/pythoncomplete.vim
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim 
