" vim:fdm=marker:foldenable

" PATHOGEN {{{
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
" source sensible on its own so it is possible to overwrite tags
source ~/.vim/bundle/sensible/plugin/sensible.vim
filetype off
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
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
set wildignore+=*.o,*.obj,.git,public/system,build/**
set number
set fencs=utf8
set enc=utf8
set tenc=utf8
set mouse=a " select using mouse with shift pressed on
set formatoptions=tcqomM
set autoindent
set ignorecase
set smartcase
set smarttab
set nolist
set listchars=tab:▸\ ,eol:¬
set foldmethod=syntax
set nofoldenable
set updatetime=4100
set lazyredraw
set pastetoggle=<F4>
set tags=./.vimtags

"CHANGE CURSOR SHAPE IN DIFFRENT MODES
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set <F15>=[1;5I
set <F16>=[1;6I
set <F18>=
nmap <F15> <C-Tab>
nmap <F16> <C-S-Tab>
imap <F15> <C-Tab>
imap <F16> <C-S-Tab>
imap <M-BS> 
imap <F18> 

" CustomFoldText {{{
" http://www.gregsexton.org/2011/03/improving-the-text-displayed-in-a-fold/
function! CustomFoldText() abort
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
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
    set termguicolors
    syntax on
    set background=dark
    set hlsearch
    set cursorline
    colorscheme apprentice
endif
if has("gui_running")
    set guifont=Iosevka\ Regular\ 10
    set guioptions=aegit " no toolbar or menu
    set guiheadroom=0
else
    set nopaste
    set ttyfast
endif
" GUI }}}

" AIRLINE {{{
  let g:airline_powerline_fonts=1
  let g:airline_inactive_collapse=0
  let g:airline_theme='bubblegum'
  let g:airline#extensions#branch#displayed_head_limit = 15
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  nmap <leader>- <Plug>AirlineSelectPrevTab
  nmap <leader>= <Plug>AirlineSelectNextTab
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" AIRLINE }}}

" C-SUPPORT {{{
let g:C_LocalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_GlobalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_MapLeader = ','
" C-SUPPORT }}}

" MINIBUFEXPL {{{
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>
command BD MBEbd
let g:miniBufExplAutoStart = 0
let g:miniBufExplCycleArround = 1
" MINIBUFEXPL }}}

" SYNTASTIC {{{
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_auto_loc_list = 1
" SYNTASTIC }}}

" DENITE {{{
nnoremap <C-u> :<C-u>Denite -buffer-name=files -auto-resize file/rec<cr>
nnoremap <C-o> :<C-u>Denite -buffer-name=buffers -mode=normal -quick-move=select -auto-resize buffer<cr>
nnoremap <C-m> :<C-u>Denite -buffer-name=mru -auto-resize file_mru<cr>
nnoremap <C-\> :<C-u>Denite -buffer-name=grep -auto-resize grep<cr>
nnoremap <Leader>* :<C-u>DeniteCursorWord -buffer-name=grep -auto-resize grep<cr>
nnoremap <C-y> :<C-u>Denite -buffer-name=yanks -mode=normal -auto-resize register<cr>

" Change file_rec command to use ripgrep
call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Get rid of those stupid fuzzy matchers
call denite#custom#source('file/rec', 'matchers', ['matcher_substring'])

" Change mappings.
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Allow to narrow results also by filename
call denite#custom#source('grep', 'converters', ['converter_abbr_word'])

" Change default prompt
call denite#custom#option('default', 'prompt', '» ')
" DENITE }}}

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
" TAGBAR }}}

" FUGITIVE {{{
nmap <leader>gw :Gwrite<cr>
nmap <leader>gc :Gcommit<cr>
" FUGITIVE }}}

" VIM RUBY {{{
if has("autocmd")
  augroup vimRuby
    autocmd!
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
    autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  augroup END
end
" VIM RUBY }}}

" YOUCOMPLETEME {{{
let g:ycm_rust_src_path = expand("~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/")
nnoremap gd :YcmCompleter GoToDefinition<CR>
" YOUCOMPLETEME }}}

" ULTISNIPS {{{
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-l>"
" ULTISNIPS }}}

" GUTENTAGS {{{
let g:gutentags_ctags_tagfile = '.vimtags'
" GUTENTAGS }}}
"
" SQLFMT {{{
vnoremap <leader>sf ! sqlformat -r -k upper -<cr>
" SQLFMT }}}

" VIMADE {{{
let g:vimade = {}
let g:vimade.fadelevel = 0.7
" VIMADE }}}

" VIMUX {{{
 map <Leader>rf :call VimuxRunCommand("clear; dcr rspec " . bufname("%"))<CR>
 map <Leader>rs :call VimuxRunCommand("clear; dcr rspec " . bufname("%") . ":" . line('.'))<CR>
 map <Leader>rw :call VimuxRunCommand("clear; dcr rspec spec")<CR>
 map <Leader>vp :VimuxPromptCommand<CR>
 map <Leader>vl :VimuxRunLastCommand<CR>
 map <Leader>vi :VimuxInspectRunner<CR>
 map <Leader>vq :VimuxCloseRunner<CR>
 map <Leader>vx :VimuxInterruptRunner<CR>
 map <Leader>vz :call VimuxZoomRunner()<CR>
" VIMUX }}}

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
map gn :nohlsearch<CR>
map <silent> <A-]> :pop<CR>
cmap w!! w !sudo tee % >/dev/null

nnoremap + O<esc>
nnoremap _ o<esc>
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" PasteWindow {{{
function! Pastewindow(direction) abort
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

" KEY MAPPINGS }}}

" PROSE {{{
command! Prose setlocal spell spelllang=pl,en
command! Code setlocal nospell
if !has('gui_running')
  highlight clear SpellBad
  highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
  highlight clear SpellCap
  highlight SpellCap term=underline cterm=underline
  highlight clear SpellRare
  highlight SpellRare term=underline cterm=underline
  highlight clear SpellLocal
  highlight SpellLocal term=underline cterm=underline
end
" where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
" PROSE }}}

" AUTOCMD {{{
if has("autocmd")
    augroup removeTrailingSpaces
      autocmd!
      autocmd BufWritePre * :%s/\s\+$//e
    augroup END

    augroup vimInMutt
        autocmd!
        autocmd BufRead /tmp/mutt* :source ~/.vim/mail.vim
    augroup END
endif
" AUTOCMD }}}
