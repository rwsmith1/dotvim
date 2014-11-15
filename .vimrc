:set wrap
:set linebreak
:set nolist  " list disables linebreak
:set textwidth=0
:set wrapmargin=0
:set formatoptions+=l

:set guioptions=+m
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='evince'
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
:set grepprg=grep\ -nH\ $*
set display=lastline

set ttyscroll=0

if has('gui_running')
	if has('gui_gtk2')
		"set guifont=Monospace\ 14
		"set guifont=liberationmono\ 14
		"set guifont=Source\ Code\ Pro\ Medium\ 16
		"set guifont=Ubuntu\ Mono\ 18
		"set guifont=Inconsolata\ Medium\ 18
		"set guifont=Courier\ 16
		"set guifont=Andale\ Mono\ 16
		"set guifont=Courier\ Prime\ 18
		"set guifont=Anonymous\ Pro\ 18
		set guifont=Consolas\ 18
		set lsp=4
	elseif has ('gui_win32')
		"set guifont=Consolas:h14:cANSI
		set guifont=DejaVu\ Sans\ Mono:h14:cANSI
	endif
endif

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

autocmd BufRead *\.txt setlocal formatoptions=l
autocmd BufRead *\.txt setlocal lbr
autocmd BufRead *\.txt map  j gj
autocmd BufRead *\.txt  map  k gk
autocmd BufRead *\.txt setlocal smartindent
autocmd BufRead *\.txt setlocal spell spelllang=en_us

autocmd BufRead *\.md map j gj
autocmd BufRead *\.md map k gk
 
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
 
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

vmap <M-j> gj
vmap <M-k> gk
vmap <M-4> g$
vmap <M-6> g^
vmap <M-0> g^
nmap <M-j> gj
nmap <M-k> gk
nmap <M-4> g$
nmap <M-6> g^
nmap <M-0> g^

" change the mapleader from \ to ,
let mapleader=","

map <Leader> <Plug>(easymotion-prefix)

set background=dark
colorscheme solarized


"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

"let g:solarized_termcolors=256

"if has("autocmd")
"  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"endif

let g:pandoc#after#modules#enabled = ["ultisnips"]

let g:ycm_filetype_blacklist = {
	\ 'tagbar' : 1,
	\ 'qf' : 1,
	\ 'notes' : 1,
	\ 'markdown' : 1,
	\ 'unite' : 1,
	\ 'text' : 1,
	\ 'vimwiki' : 1,
	\ 'infolog' : 1,
	\ 'mail' : 1
	\}

" \ 'pandoc' : 1,
"

" Use par to format paragraphs.
:set formatprg=par\ -w60
:map <A-q> {v}!par -w72<CR>
:vmap <A-q> !par -w72<CR>
