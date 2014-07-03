" vim:fdm=marker:foldenable

" PATHOGEN {{{
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
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
set backup " keep a backup file
set backupdir=~/.tmp-vim
set history=500 " keep 50 lines of command line history
set showmatch "show matching brackets/parenthesis
set incsearch " do incremental searching
set completeopt=menu,longest,preview
set wildchar=<TAB>
set wildignore+=*.o,*.obj,.git,public/system,build/**
set number "numerowanie linii
set fencs=utf8
set enc=utf8
set tenc=utf8
set mouse=a " select using mouse with shift pressed on
set formatoptions=tcqomM
set helplang=pl,en
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
    hi SpecialKey ctermfg=12 ctermbg=234
    hi NonText ctermfg=12 ctermbg=234
endif
if has("gui_running")
    hi SpecialKey guibg=grey20
    hi NonText guifg=yellowgreen guibg=grey20
    set lines=999
    set columns=999
    set cursorline
    set guioptions=aegit "wylaczony toolbar i menu
    set guiheadroom=0
else
    set nopaste
    set ttyfast
endif
" GUI }}}

" COLORSCHEME {{{
if !has('gui_running')
    let g:gruvbox_italic=0
    colorscheme gruvbox
else
    colorscheme gruvbox
end
" COLORSCHEME }}}

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

" AIRLINE {{{
  let g:airline_powerline_fonts=1
  let g:airline_inactive_collapse=0
  let g:airline_theme='powerlineish'
  let g:airline#extensions#branch#displayed_head_limit = 12
" AIRLINE }}}

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

" PENCIL {{{
let g:pencil#wrapModeDefault = 'hard' " or 'soft'

augroup pencil
  autocmd!
  autocmd FileType markdown call pencil#init()
  autocmd FileType textile call pencil#init()
  autocmd FileType text call pencil#init({'wrap': 'hard'})
augroup END
"  PENCIL }}}

" UNITE {{{
let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 1
let g:unite_prompt='» '
let g:unite_split_rule='botright'

" call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

nnoremap <C-u> :<C-u>Unite -buffer-name=files -auto-resize file_rec/async:!<cr>
nnoremap <C-m> :<C-u>Unite -buffer-name=mru -auto-resize neomru/file<cr>
nnoremap <C-b> :<C-u>Unite -buffer-name=buffers -quick-match -auto-resize buffer<cr>
nnoremap <C-\> :<C-u>Unite -buffer-name=grep -auto-resize grep:.<cr>
nnoremap <C-y> :<C-u>Unite -buffer-name=yanks -quick-match -auto-resize history/yank<cr>
nnoremap <C-e> :<C-u>Unite -buffer-name=spell -auto-resize spell_suggest<cr>

if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup'
  let g:unite_source_grep_recursive_opt=''
elseif executable('ack')
  let g:unite_source_grep_command='ack'
  let g:unite_source_grep_default_opts='--no-heading --no-color -C4'
  let g:unite_source_grep_recursive_opt=''
endif

function! s:unite_settings()
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  inoremap <silent><buffer><expr> <C-s>     unite#do_action('split')
  inoremap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
  nnoremap <silent><buffer><expr> <C-s>     unite#do_action('split')
  nnoremap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
endfunction
autocmd FileType unite call s:unite_settings()
" UNITE }}}

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

" PROSE {{{
command! Prose setlocal spell spelllang=pl,en
command! Code setlocal nospell
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline
" where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
" PROSE }}}

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
