"PATHOGEN BEGIN
set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()
filetype plugin indent on
"PATHOGEN END

set showmode
set backspace=indent,eol,start
set virtualedit=onemore
set noautochdir
if has("vms")
    set nobackup " do not keep a backup file, use versions instead
else
    set backup " keep a backup file
    set backupdir=~/.tmp-vim
endif
set history=500 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set showmatch "show matching brackets/parenthesis
set incsearch " do incremental searching
set completeopt=menu,longest,preview
set wildmenu "ladne dopelnianie komend
set wildchar=<TAB>
set number "numerowanie linii
set fencs=utf8
set enc=utf8
set tenc=utf8
set mouse=a
set formatoptions=tcqmM
set textwidth=120
set helplang=pl,en
set autoindent
set smartindent
" set cindent
set ignorecase
set smartcase "case sensitive tylko jesli wyszukiwana fraza zawiera wielka litere
set smarttab
set expandtab
" set tabstop=4 "4 spacje zamiast taba
set shiftwidth=4 "4 spacje przyautoformatowaniu kodu"
set softtabstop=4 "tylko spacje w formatowaniu kodu
set nocursorline
set paste
source $VIMRUNTIME/ftplugin/man.vim "wlaczamy plugin man
" no list special keys
set nolist
" set special keys, just in case
set listchars=tab:▸\ ,eol:¬

"GUI BEGIN
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
    set guifont=Monospace\ 8
    colorscheme wombat256
    hi SpecialKey ctermfg=12 ctermbg=234
    hi NonText ctermfg=12 ctermbg=234
endif
if has("gui_running")
    "set background=dark
    colorscheme desert
    hi SpecialKey guibg=grey20
    hi NonText guifg=yellowgreen guibg=grey20
    set lines=58
    set columns=152
    set cursorline
    set guioptions=aegirLt "wylaczony toolbar i menu
endif
"GUI END

"TOHTML BEGIN
let html_number_lines=0
let use_xhtml=1
let html_use_css=1
let html_dynamic_folds=1
"TOHTML END

"STATUSLINE BEGIN
function! FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
	return ""
    endif
    if bytes < 1024 "w bajtach
	return bytes
    endif
    if bytes < 1048576 "w kilobajtach
	return (bytes / 1024) . "K"
    else "w megabajtach
	return (bytes / 1048576) . "M"
    endif
endfunction

hi User0 guibg=#D2FE39 ctermbg=191 guifg=#000000 ctermfg=16
hi mod guibg=#D2FE39 ctermbg=191 guifg=#FF0000 ctermfg=169 
hi ro guibg=#FF0000 ctermbg=169 guifg=#000000 ctermfg=16
hi User1 guibg=#6FFE39 ctermbg=83 guifg=#000000 ctermfg=16
hi User2 guibg=#39FE66 ctermbg=47 guifg=#000000 ctermfg=16
hi User3 guibg=#39FEC9 ctermbg=87 guifg=#000000 ctermfg=16
hi User4 guibg=#39D2FE ctermbg=75 guifg=#000000 ctermfg=16
hi User5 guibg=#396FFE ctermbg=63 guifg=#000000 ctermfg=16
hi User6 guibg=#6639FE ctermbg=99 guifg=#000000 ctermfg=16
hi User7 guibg=#C939FE ctermbg=171 guifg=#000000 ctermfg=16
hi User8 guibg=#FE39D2 ctermbg=206 guifg=#000000 ctermfg=16
hi User9 guibg=#FE396F ctermbg=203 guifg=#000000 ctermfg=16
hi User10 guibg=#FF6639 ctermbg=208 guifg=#000000 ctermfg=16
hi User11 guibg=#FEC939 ctermbg=215 guifg=#FF0000 ctermfg=169



set statusline=
set statusline=%#User0#
set statusline+=[%f 
set statusline+=%#mod#
set statusline+=%m
set statusline+=%#ro#
set statusline+=%r
set statusline+=%#User0#
set statusline+=%w]
set statusline+=%#User1#
set statusline+=[FORMAT=%{&ff}]
set statusline+=%#User2#
set statusline+=[TYPE=%Y]
set statusline+=%#User3#
set statusline+=[ENC=%{strlen(&fenc)?&fenc:'none'}]
set statusline+=%#User4#
set statusline+=[SIZE=%{FileSize()}]
set statusline+=%#User5#
set statusline+=[POS=%04l,%04v]
set statusline+=%#User6#
set statusline+=[POS=%p%%]
set statusline+=%#User7#
set statusline+=[LEN=%L]
set statusline+=%#User8#
set statusline+=[GIT=%{fugitive#statusline()}]
set statusline+=%#User9#
set statusline+=[ASCII=\%03.3b]
set statusline+=%#User10#
set statusline+=[HEX=\%02.2B]
set statusline+=%#ro#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%#User11#%=
" set statusline+=%*
set laststatus=2
"STATUSLINE END

"CHANGE CURSOS SHAPE IN DIFFRENT MODES
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"ALTERNATE BEGIN
" dodane sciazki do plikow naglowkowych kilku bibliotek
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/usr/include/opencv,abs:/usr/include/curl'
"ALTERNATE END

"C-SUPPORT BEGIN
let g:C_LocalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_GlobalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
"C-SUPPORT END

"MINIBUFEXPLORER BEGIN
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplUseSingleClick = 1

hi MBEVisibleActive guifg=#8181F7 guibg=#5858FA
hi MBEVisibleChangedActive guifg=#F32020 guibg=#C0C0C0
hi MBEVisibleChanged guifg=#F34227 guibg=#808080
hi MBEVisibleNormal guifg=#A6DB29 guibg=#808080
hi MBEChanged guifg=#F34227 guibg=#808080
hi MBENormal guifg=#A6DB29 guibg=#808080
"MINIBUFEXPLORER END

"SYNTASTIC BEGIN
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
"SYNTASTIC END

"NERD COMMENTER BEGIN
" wlaczenie spacji pomiedzy znakiem komentarza, a komentowanym tekstem
let NERDSpaceDelims=1
"NERD COMMENTER END

"VIM-RUBY BEGIN
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
"VIM-RUBY END

"COMMAND-T BEGIN
"okno command-t - najwyzej 15 pozycji
let g:CommandTMaxHeight=15 
noremap <F5> <Esc>:CommandT<CR>
noremap! <F5> <Esc>:CommandT<CR>
"COMMAND-T END

"DOXYGEN TOOLKIT BEGIN
" menu Doxy jako submenu Plugin
let g:Doxy_RootMenu = "&Plugin.Do&xy."
" naprawiamy sciezki do szablonow, popsute przez pathogen'a :)
let g:Doxy_LocalTemplateFile  = $HOME.'/.vim/bundle/doxygen-support/doxygen-support/templates/doxygen.templates'
let g:Doxy_LocalTemplateDir   = $HOME.'/.vim/bundle/doxygen-support/doxygen-support/templates/'
"DOXYGEN TOOLKIT END


"SHOWMARKS BEGIN
""domyslnie wylaczone, mozemy wlaczyc przez <mapleader>mt
let showmarks_enable=0
"znaczniki, ktorych bedziemy uzywac, bez Z zeby nam nie kolidowalo z mapowaniem <F2>
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY" 
"kolory dla znacznikow a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue 
"dla znacznikow A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed 
"dla innych znacznikow
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
"dla wielu znacznikow w tej samej linii
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
"SHOWMARKS END

"YANKRING BEGIN
let g:yankring_history_file = '.yankring_history.txt'
noremap <F6> <Esc>:YRShow<CR>
noremap! <F6> <Esc>:YRShow<CR>
"YANKRING END

"SUPERTAB BEGIN
" let g:SuperTabLongestEnhanced = 1
let g:SuperTabMappingForward = '<Tab>'
let g:SuperTabMappingBackward = '<S-Tab>'
"kolory dla pop up menu
highlight Pmenu term=NONE cterm=NONE ctermfg=7 ctermbg=5 gui=NONE guifg=White guibg=Magenta
highlight PmenuSel term=NONE cterm=NONE ctermfg=0 ctermbg=7 gui=NONE guifg=Black guibg=White
highlight PmenuSbar term=NONE cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guifg=White guibg=Black
highlight PmenuThumb term=NONE cterm=NONE ctermfg=0 ctermbg=7 gui=NONE guifg=Black guibg=White
"SUPERTAB END

"XPTEMPLATES BEGIN
let g:xptemplate_vars = "SParg=&BRloop=\n&SPcmd=&BRif=\n&BRstc=\n&SPop=" "dostosowanie snippetow do stylu kodowania
let g:SuperTabMappingForward = '<Plug>supertabKey' "avoid key conflict with supertab
let g:xptemplate_fallback = '<Plug>supertabKey' "jesli nic nie pasowalo w xpt sprawdzamy supertab'a
" let g:xptemplate_key = '<C-\>'
let g:xptemplate_key = '<Tab>' "xpt uzywa <tab> zamiast <C-\>
let g:xptemplate_pum_tab_nav = 1 "uzycie <tab>/<S-tab> do nawigacji w popup-msg
let g:xptemplate_minimal_prefix = 'full' "xpt wlaczy sie tylko po wpisaniu pelnej nazwy snippeta
let g:xptemplate_brace_complete = 1 "auto complete craces
"XMTEMPLATE END

"TAGLIST BEGIN
noremap <F3> <Esc>:TlistToggle<CR>
noremap! <F3> <Esc>:TlistToggle<CR>
if has("autocmd")
    autocmd BufWinEnter *Tag_List* setlocal statusline=%#User11#%F
end
"TAGLIST END

"FUGITIVE BEGIN
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gds :Gdiff --staged<cr>
"FUGITIVE END

"NERD TREE BEGIN
noremap <F4> <Esc>:NERDTreeToggle<CR>
noremap! <F4> <Esc>:NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode='<CR>' "otwieramy plik/katalog enterem
let g:NERDTreeWinSize = 35 "szerokość okna nerd tree
let g:NERDTreeWinPos = "left" "pozycja okna nerd tree
let g:NERDTreeAutoCenter = 0 "wycentrowanie
let g:NERDTreeHighlightCursorline = 0 "podswietlanie linii z kursorem
let g:NERDTreeChDirMode = 0
let g:NERDTreeShowBookmarks = 1 "wyswietl zakladki
let g:NERDTreeStatusline = -1
if has("autocmd")
    autocmd BufWinEnter NERD_* setlocal statusline=%#User11#%F
end
"NERD TREE END

"VIM RUBY BEGIN
if has("autocmd")
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
end
"VIM RUBY END


"VIM TASK BEGIN
inoremap <silent> <buffer> <C-S-CR> <ESC>:call Toggle_task_status()<CR>i
noremap <silent> <buffer> <C-S-CR> :call Toggle_task_status()<CR>
if has("autocmd")
    autocmd BufNewFile,BufRead *todo.txt,*.task,*.tasks  setfiletype task
end
"VIM TASK END

"UNIMPAIRED BEGIN
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
" Visually select the text that was last edited/pasted
nmap gV `[v`]
"UNIMPAIRED END

"KEY MAPPING BEGIN
" moving in a right way :)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

map <leader>cp :botright cope<cr>
map <leader>n :cnext<cr>
map <leader>p :cprev<cr>
map <leader>cx :cclose<cr>
map <leader>wr :w !ruby -c<cr>
" windows movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map Q gq
" szybkie wylaczenie podswietlania wynikow wyszukiwania
map gn :nohlsearch<CR> 
" zapis pliku w stylu gorszych edytorow tekstowych :)
noremap! <C-S> <Esc>:w<CR><INSERT>
" wyjscie w stylu gorzych edytorow tekstowych :)
noremap! <C-Q> <Esc>:quit<CR>
noremap <C-Q> <Esc>:quit<CR>
" latwa nawigacja zakladkami
noremap! <A-Up> <Esc>:tabnew<CR><Esc>:e<Space>
noremap <A-Up> <Esc>:tabnew<CR><Esc>:e<Space>
noremap <C-T> <Esc>:tabnew<CR>
noremap! <A-Down> <Esc>:tabclose<CR><INSERT>
noremap <A-Down> <Esc>:tabclose<CR><INSERT>
noremap! <A-Left> <Esc>:tabp<CR><INSERT>
noremap <A-Left> <Esc>:tabp<CR><INSERT>
noremap! <A-Right> <Esc>:tabn<CR><INSERT>
noremap <A-Right> <Esc>:tabn<CR><INSERT>
" zapis gdy edytujemy plik bez uprawnien do zapisu
cmap w!! w !sudo tee % >/dev/null

" unikniecie bledow spowodowanym shiftem
cmap W w
cmap Wq wq
cmap WQ wq
cmap Q q

noremap <F1> :help<Space>
noremap! <F1> :help<Space>

noremap <F2> <Esc>mZggVG=`Z:delmarks Z<CR>lzz<Insert>
noremap! <F2> <Esc>mZggVG=`Z:delmarks Z<CR>lzz<Insert>

" nowe linie powyzej/ponizej w trybie normal
nnoremap + O<esc>
nnoremap - o<esc>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" wlaczenie/wylaczenie menu
function ToggleFlag(option,flag)
    exec ('let lopt = &' . a:option)
    if lopt =~ (".*" . a:flag . ".*")
	exec ('set ' . a:option . '-=' . a:flag)
    else
	exec ('set ' . a:option . '+=' . a:flag)
    endif
endfunction
noremap <silent> <A-1> :call ToggleFlag("guioptions","m")<BAR>set guioptions?<CR>
imap <A-1> <C-O><A-1>
"KEY MAPPINGS END



"AUTOCMD BEGIN
if has("autocmd")
    autocmd QuickfixCmdPost make,grep,grepadd,vimgrep :botright cwindow "wlacz okienko quickfix po kazdym make
    autocmd BufWinLeave *.* mkview! "zapisz widok przy wylaczeniu
    autocmd BufWinEnter *.* silent loadview "wczytaj widok przy wlaczeniu

    filetype plugin indent on
    augroup vimrcEx
	au!
	autocmd FileType make setlocal noexpandtab "wylacz zamiane tabow na spacje gdy edytujemy makefile
	autocmd FileType text setlocal textwidth=120
	autocmd FileType c setlocal formatoptions=croq "wrap only comments, not code
	"autocmd FileType ruby,eruby let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
	autocmd BufReadPost * "skacz do ostatniej pozycji kursora w pliku
		    \ if line("'\"") > 0 && line("'\"") <= line("$") |
		    \ exe "normal g`\"" |
		    \ endif
    augroup END
else
    set autoindent " always set autoindenting on
endif 
"AUTOCMD END

