"PATHOGEN BEGIN
set nocompatible
filetype off
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ['minibufexpl', 'nerd_tree', 'yank_ring']

" for some reason the csscolor plugin is very slow when run on the terminal
" but not in GVim, so disable it if no GUI is running
if !has('gui_running')
    " call add(g:pathogen_disabled, 'autoclose')
endif

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
"PATHOGEN END
"
set hidden
set showmode
set backspace=indent,eol,start
set noautochdir
if has("vms")
    set nobackup " do not keep a backup file, use versions instead
else
    set backup " keep a backup file
    set backupdir=~/.tmp-vim
endif
if has("persistent_undo")
    set undodir=~/.undo-vim/
    set undofile
endif
set history=500 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set showmatch "show matching brackets/parenthesis
set incsearch " do incremental searching
set completeopt=menu,longest,preview
set wildmenu "ladne dopelnianie komend
set wildchar=<TAB>
set wildignore+=*.o,*.obj,.git,public/system,build/**
set number "numerowanie linii
set fencs=utf8
set enc=utf8
set tenc=utf8
set mouse=a
set formatoptions=tcqomM
set textwidth=120
set helplang=pl,en
set autoindent
set smartindent
" set cindent
set ignorecase
set smartcase "case sensitive tylko jesli wyszukiwana fraza zawiera wielka litere
set smarttab
set expandtab
set tabstop=2 "2 spacje zamiast taba
set shiftwidth=2 "2 spacje przyautoformatowaniu kodu"
set softtabstop=2 "tylko spacje w formatowaniu kodu
" no list special keys
set nolist
" set special keys, just in case
set listchars=tab:▸\ ,eol:¬
set foldmethod=syntax
set nofoldenable
set updatetime=4100
set lazyredraw
set pastetoggle=<F4>

"GUI BEGIN
if &t_Co > 2 || has("gui_running")
    syntax on
    set background=dark
    set hlsearch
    set guifont=Inconsolata-dz\ for\ Powerline\ 10 " install this using: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts
    colorscheme badwolf
    hi SpecialKey ctermfg=12 ctermbg=234
    hi NonText ctermfg=12 ctermbg=234
endif
if has("gui_running")
    colorscheme badwolf
    hi SpecialKey guibg=grey20
    hi NonText guifg=yellowgreen guibg=grey20
    set lines=999
    set columns=999
    set cursorline
    set guioptions=aegirLt "wylaczony toolbar i menu
else
    set nopaste
    " set ttymouse=xterm2
    " behave xterm
    " set selectmode=mouse
endif
"GUI END

"TOHTML BEGIN
let html_number_lines=0
let use_xhtml=1
let html_use_css=1
let html_dynamic_folds=1
"TOHTML END

"DELIMITMATE BEGIN
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
"DELIMITMATE END

"POWERLINE BEGIN
if has("gui_running")
    let g:Powerline_symbols = 'fancy'
else
    let g:Powerline_symbols = 'unicode'
endif
set laststatus=2
"POWERLINE END

"CHANGE CURSOR SHAPE IN DIFFRENT MODES
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"ALTERNATE BEGIN
" dodane sciazki do plikow naglowkowych kilku bibliotek
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/usr/include/opencv,abs:/usr/include/curl'
"ALTERNATE END

"C-SUPPORT BEGIN
let g:C_LocalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_GlobalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_MapLeader = ','
"C-SUPPORT END

"TAGMABUFMGR BEGIN
let g:TagmaBufMgrLastWindow = 1
"TAGMABUFMGR END

"MINIBUFEXPLORER BEGIN
" let g:miniBufExplShowBufNumbers = 1
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 0
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1
" let g:miniBufExplUseSingleClick = 1
" let g:miniBufExplTabWrap = 1

" hi MBEVisibleActive guifg=#8181F7 guibg=#242424
" hi MBEVisibleChangedActive guifg=#FF2200 guibg=#242424
" hi MBEVisibleChanged guifg=#E45B46 guibg=#242424
" hi MBEVisibleNormal guifg=#A6DB29 guibg=#242424
" hi MBEChanged guifg=#E45B46 guibg=#242424
" hi MBENormal guifg=#A6DB29 guibg=#242424
"MINIBUFEXPLORER END

"VIM-LATEX BEGIN
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pd='pdflatex -src-specials -interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats='dvi,pdf'
if !hasmapto('<Plug>IMAP_JumpForward', 'i')
    imap <C-M> <Plug>IMAP_JumpForward
endif
if !hasmapto('<Plug>IMAP_JumpForward', 'n')
    nmap <C-M> <Plug>IMAP_JumpForward
endif
"VIM-LATEX END

"SYNTASTIC BEGIN
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_warnings=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_compiler_options = ' -Wall -Wno-write-strings -g `pkg-config --cflags opencv` `pkg-config --cflags sigc++-2.0`'
"SYNTASTIC END

"NERD COMMENTER BEGIN
" wlaczenie spacji pomiedzy znakiem komentarza, a komentowanym tekstem
let NERDSpaceDelims=1
"NERD COMMENTER END

"COMMAND-T BEGIN
"okno command-t - najwyzej 15 pozycji
let g:CommandTMaxHeight=15
let g:CommandTMaxFiles=15000
nmap <silent> <Leader>cd :CommandT<CR>
nmap <silent> <Leader>bg :CommandTBuffer<CR>
nmap <silent> <Leader>vf :CommandTFlush<CR>
"COMMAND-T END

"UNDOTREE BEGIN
nmap <silent> <Leader>ut :UndotreeToggle<CR>
"UNDOTREE END

"YANKSTACK BEGIN
let g:yankstack_map_keys = 0
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
call yankstack#setup() " this should be called before any custom mappings related to yanking
"YANKSTACK END

"YANKRING BEGIN
" let g:yankring_n_keys = ''
" let g:yankring_history_file = '.yankring_history.txt'
" nmap <silent> <Leader>yr :YRShow<CR>
"YANKRING END

"SUPERTAB BEGIN
let g:SuperTabLongestEnhanced = 1
let g:SuperTabDefaultCompletionType = "<c-p>"
let g:SuperTabMappingForward = '<Tab>'
let g:SuperTabMappingBackward = '<S-Tab>'
"kolory dla pop up menu
" highlight Pmenu term=NONE cterm=NONE ctermfg=7 ctermbg=5 gui=NONE guifg=White guibg=Magenta
" highlight PmenuSel term=NONE cterm=NONE ctermfg=0 ctermbg=7 gui=NONE guifg=Black guibg=White
" highlight PmenuSbar term=NONE cterm=NONE ctermfg=7 ctermbg=0 gui=NONE guifg=White guibg=Black
" highlight PmenuThumb term=NONE cterm=NONE ctermfg=0 ctermbg=7 gui=NONE guifg=Black guibg=White
"SUPERTAB END

"XPTEMPLATES BEGIN
" let g:xptemplate_vars = "SParg=&BRloop=\n&SPcmd=&BRif=\n&BRstc=\n&SPop=" "dostosowanie snippetow do stylu kodowania
" let g:SuperTabMappingForward = '<Plug>supertabKey' "avoid key conflict with supertab
" let g:xptemplate_fallback = '<Plug>supertabKey' "jesli nic nie pasowalo w xpt sprawdzamy supertab'a
" " let g:xptemplate_key = '<C-\>'
" let g:xptemplate_key = '<Tab>' "xpt uzywa <tab> zamiast <C-\>
" let g:xptemplate_pum_tab_nav = 1 "uzycie <tab>/<S-tab> do nawigacji w popup-msg
" let g:xptemplate_minimal_prefix = 'full' "xpt wlaczy sie tylko po wpisaniu pelnej nazwy snippeta
" let g:xptemplate_brace_complete = 1 "auto complete braces
"XMTEMPLATE END

"TAGBAR BEGIN
nmap <silent> <Leader>tg :TagbarToggle<CR>
nmap <silent> <Leader>th :TagbarOpenAutoClose<CR>
"TAGBAR END

"FUGITIVE BEGIN
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gs :Gvsplit :<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gds :Gdiff --staged<cr>
"FUGITIVE END

"NERD TREE BEGIN
" nmap <silent> <Leader>nt :NERDTreeToggle<CR>
" let g:NERDTreeMapActivateNode='<CR>' "otwieramy plik/katalog enterem
" let g:NERDTreeWinSize = 35 "szerokość okna nerd tree
" let g:NERDTreeWinPos = "left" "pozycja okna nerd tree
" let g:NERDTreeAutoCenter = 0 "wycentrowanie
" let g:NERDTreeHighlightCursorline = 0 "podswietlanie linii z kursorem
" let g:NERDTreeChDirMode = 0
" let g:NERDTreeShowBookmarks = 1 "wyswietl zakladki
" let g:NERDTreeStatusline = -1
"NERD TREE END

"VIM RUBY BEGIN
if has("autocmd")
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
end
"VIM RUBY END

"VIMERL BEGIN
let erlang_show_errors = 0 "let syntastic do the job
"VIMERL END

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
" enter command mode quickly
nnoremap ; :

nmap Y y$
nmap S hs

" windows movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map Q gqap
" szybkie wylaczenie podswietlania wynikow wyszukiwania
map gn :nohlsearch<CR>
" latwe powrot z taga do ktorego skoczylismy
map <silent> <A-]> :pop<CR>
" zapis gdy edytujemy plik bez uprawnien do zapisu
cmap w!! w !sudo tee % >/dev/null

noremap <F2> <Esc>mZggVG=`Z:delmarks Z<CR>lzz<Insert>
noremap! <F2> <Esc>mZggVG=`Z:delmarks Z<CR>lzz<Insert>

" nowe linie powyzej/ponizej w trybie normal
nnoremap + O<esc>
nnoremap - o<esc>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

fu! Pastewindow(direction) "{{{
    if exists("g:yanked_buffer")
        if a:direction == 'edit'
            let temp_buffer = bufnr('%')
        endif

        exec a:direction . " +buffer" . g:yanked_buffer

        if a:direction == 'edit'
            let g:yanked_buffer = temp_buffer
        endif
    endif
endf "}}}

"yank/paste buffers
nmap <silent> <leader>wy  :let g:yanked_buffer=bufnr('%')<cr>
nmap <silent> <leader>wd  :let g:yanked_buffer=bufnr('%')<cr>:q<cr>
nmap <silent> <leader>wp :call Pastewindow('edit')<cr>
nmap <silent> <leader>ws :call Pastewindow('split')<cr>
nmap <silent> <leader>wv :call Pastewindow('vsplit')<cr>
nmap <silent> <leader>wt :call Pastewindow('tabnew')<cr>

fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = " " . repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

set foldtext=CustomFoldText()

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
    autocmd BufWritePre * :%s/\s\+$//e "usuwa trailing spaces

    filetype plugin indent on
    augroup vimrcEx
        au!
        autocmd BufRead /tmp/mutt* :source ~/.vim/mail.vim
        autocmd FileType make setlocal noexpandtab "wylacz zamiane tabow na spacje gdy edytujemy makefile
        autocmd FileType text setlocal textwidth=120
        autocmd FileType tex setlocal formatoptions=tcroqMl
        autocmd FileType c setlocal formatoptions=croq "wrap only comments, not code
    augroup END
else
    set autoindent " always set autoindenting on
endif
"AUTOCMD END
