" vim:fdm=marker:foldenable

" PATHOGEN {{{
set nocompatible
filetype off
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ['easytags']
if !has('gui_running')
    " call add(g:pathogen_disabled, 'example-vim-plugin')
endif

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
" PATHOGEN }}}

" BASIC SETTINGS {{{
set hidden
set showmode
set backspace=indent,eol,start
set noautochdir
set backup " keep a backup file
set backupdir=~/.tmp-vim
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
set ignorecase
set smartcase "case sensitive tylko jesli wyszukiwana fraza zawiera wielka litere
set smarttab
set nolist
set listchars=tab:▸\ ,eol:¬
set foldmethod=syntax
set nofoldenable
set updatetime=4100
set lazyredraw
set pastetoggle=<F4>

"CHANGE CURSOR SHAPE IN DIFFRENT MODES
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" CustomFoldText {{{
" http://www.gregsexton.org/2011/03/improving-the-text-displayed-in-a-fold/
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
" CustomFoldText }}}

" BASIC SETTINGS }}}

" GUI {{{
if &t_Co > 2 || has("gui_running")
    syntax on
    set background=dark
    set hlsearch
    set guifont=Inconsolata-dz\ for\ Powerline\ 10 " install this using: https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts
    colorscheme gruvbox
    hi SpecialKey ctermfg=12 ctermbg=234
    hi NonText ctermfg=12 ctermbg=234
endif
if has("gui_running")
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
" GUI }}}

" TOHTML {{{
let html_number_lines=0
let use_xhtml=1
let html_use_css=1
let html_dynamic_folds=1
" TOHTML }}}

" INDENT GUIDES {{{
let g:indent_guides_guide_size = 1
" INDENT GUIDES }}}

" DELIMITMATE {{{
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
" DELIMITMATE }}}

" POWERLINE {{{
set rtp+=$HOME/.vim/bundle/powerline/powerline/bindings/vim
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
if has("gui_running")
    let g:Powerline_symbols = 'fancy'
else
    let g:Powerline_symbols = 'unicode'
endif
set laststatus=2
" POWERLINE }}}

" C-SUPPORT {{{
let g:C_LocalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_GlobalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_MapLeader = ','
" C-SUPPORT }}}

" MINIBUFEXPL {{{
map <leader>a :MBEbp<cr>
map <leader>s :MBEbn<cr>
map <leader>q :MBEbb<cr>
map <leader>w :MBEbf<cr>
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>
command BD MBEbd
let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplSetUT = 200
let g:miniBufExplCycleArround = 1
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg cterm=underline gui=underline
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg cterm=underline gui=underline
" MINIBUFEXPL }}}

" CALENDAR {{{
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" CALENDAR }}}

" SYNTASTIC {{{
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_auto_loc_list = 1
let g:syntastic_cpp_compiler_options = ' -Wall -Wno-write-strings -g `pkg-config --cflags opencv` `pkg-config --cflags sigc++-2.0`'
" SYNTASTIC }}}

" COMMAND-T {{{
"okno command-t - najwyzej 15 pozycji
let g:CommandTMaxHeight=15
let g:CommandTMaxFiles=15000
nmap <silent> <Leader>cd :CommandT<CR>
nmap <silent> <Leader>bg :CommandTBuffer<CR>
nmap <silent> <Leader>vf :CommandTFlush<CR>
" COMMAND-T }}}

" UNDOTREE {{{
if has("persistent_undo")
    set undodir=~/.undo-vim/
    set undofile
endif
nmap <silent> <Leader>ut :UndotreeToggle<CR>
" UNDOTREE }}}

" YANKSTACK {{{
let g:yankstack_map_keys = 0
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
call yankstack#setup() " this should be called before any custom mappings related to yanking
" YANKSTACK }}}

" TAGBAR {{{
nmap <silent> <Leader>tg :TagbarToggle<CR>
nmap <silent> <Leader>th :TagbarOpenAutoClose<CR>
" TAGBAR }}}

" FUGITIVE {{{
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gs :Gvsplit :<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gds :Gdiff --staged<cr>
" FUGITIVE }}}

" VIM RUBY {{{
if has("autocmd")
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
end
" VIM RUBY }}}

" VIMERL {{{
let erlang_show_errors = 0 "let syntastic do the job
" VIMERL }}}

" KEY MAPPING {{{
" moving in a right way :)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
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
nnoremap _ o<esc>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" PasteWindow {{{
fu! Pastewindow(direction)
    if exists("g:yanked_buffer")
        if a:direction == 'edit'
            let temp_buffer = bufnr('%')
        endif

        exec a:direction . " +buffer" . g:yanked_buffer

        if a:direction == 'edit'
            let g:yanked_buffer = temp_buffer
        endif
    endif
endf

"yank/paste buffers
nmap <silent> <leader>wy  :let g:yanked_buffer=bufnr('%')<cr>
nmap <silent> <leader>wd  :let g:yanked_buffer=bufnr('%')<cr>:q<cr>
nmap <silent> <leader>wp :call Pastewindow('edit')<cr>
nmap <silent> <leader>ws :call Pastewindow('split')<cr>
nmap <silent> <leader>wv :call Pastewindow('vsplit')<cr>
nmap <silent> <leader>wt :call Pastewindow('tabnew')<cr>
" PasteWindow }}}

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
" KEY MAPPINGS }}}

" AUTOCMD {{{
if has("autocmd")
    autocmd QuickfixCmdPost make,grep,grepadd,vimgrep :botright cwindow "wlacz okienko quickfix po kazdym make
    autocmd BufWritePre * :%s/\s\+$//e "usuwa trailing spaces

    augroup vimrcEx
        au!
        autocmd BufRead /tmp/mutt* :source ~/.vim/mail.vim
    augroup END
endif
" AUTOCMD }}}
