" Function Key
 map <F1> K              " man page
 map <F2> :tabnew<CR>
vmap <F2> <ESC> :tabnew<CR>
imap <F2> <ESC> :tabnew<CR>
 map <F3> :tabprevious<CR>
vmap <F3> <ESC> :tabprevious<CR>
imap <F3> <ESC> :tabprevious<CR>
 map <F4> :tabnext<CR>
vmap <F4> <ESC> :tabnext<CR>
imap <F4> <ESC> :tabnext<CR>
 map <F5> :e .<CR>
vmap <F5> <ESC> :e .<CR>
imap <F5> <ESC> :e .<CR>

 map <F6> :Tlist<CR>
vmap <F6> <ESC> :Tlist<CR>
imap <F6> :Tlist<CR>

 map <F7> :cn<CR>        " 에러(결과) 위치로
 map <F8> :cp<CR>        " 에러(결과) 위치로(역순)
 map <F9> :noh<CR>       " 하이라이트 제거
 map <C-F10> gd          " 어떤 함수 안에서 지역변수를 추적
 map <F11> ^]            " 전역변수/구조체/정의상수/함수정의를 추적
 map <C-F11> :make<CR>   " 빌드
 map <F12> ^T            " 이전위치로 되돌아오기
 map <C-F12> :make again<CR> " 모두 새로 빌드
set title
set hlsearch
set autoindent          " 자동으로 들여쓰기를 한다.
set smartindent
set bs=2                " allow backspacing over everything in insert mode
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
set ruler               " show the cursor position all the time
set background=dark
set softtabstop=4
set shiftwidth=4
set tabstop=4
set showmatch
set encoding=utf-8
set wrap
set incsearch
set vb
set exrc                " 특정디렉토리에서 .exrc 파일의 설정을 적용하게 함
set fencs=utf8,euc-kr
set nocp
"set fencs=euc-kr,utf8
set fdm=marker      " 폴딩기능을 위해
syntax on
hi Comment term=bold ctermfg=4 ctermbg=6
filetype plugin on      " perl-support enable
vmap <Tab> >gv
vmap <S-Tab> <gv

let Tlist_Use_Right_Window = 1     " Place the taglist window on the right side.
let Tlist_Exit_OnlyWindow = 1      " Close Vim if the taglist is the only window.
let Tlist_File_Fold_Auto_Close = 1 " Close tag folds for inactive buffers.

set gfn=Menlo\ Regular:h16
colorscheme darkblue
