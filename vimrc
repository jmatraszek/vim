" vim:fdm=marker:foldenable

" PATHOGEN {{{
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
" source sensible on its own so it is possible to overwrite tags
source ~/.vim/bundle/sensible/plugin/sensible.vim
filetype off
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = ['vim-yaml-helper']
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
set foldmethod=indent
set regexpengine=1 " https://stackoverflow.com/a/16920294
set nofoldenable
set updatetime=100
set lazyredraw
set pastetoggle=<F4>
set tags=.vimtags;/
set shiftround " https://vimtricks.com/p/ensuring-aligned-indentation/

let g:ruby_path = system('rvm current')

let mapleader=","

"CHANGE CURSOR SHAPE IN DIFFRENT MODES
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set <F15>=[1;5I
set <F16>=[1;6I
set <F18>=
map <F15> <C-Tab>
map <F16> <C-S-Tab>
imap <F15> <C-Tab>
imap <F16> <C-S-Tab>
cnoremap <M-BS> 
cnoremap <F18> 
inoremap <M-BS> 
inoremap <F18> 

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

" BBYE {{{
command BD Bdelete
command BW Bwipeout
" BBYE }}}

" AIRLINE {{{
let g:airline#extensions#tagbar#enabled = 0
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=0
let g:airline_highlighting_cache = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#branch#displayed_head_limit = 17
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
nmap <C-Tab> <Plug>AirlineSelectNextTab
nmap <C-S-Tab> <Plug>AirlineSelectPrevTab
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" AIRLINE }}}

" C-SUPPORT {{{
let g:C_LocalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_GlobalTemplateFile = $HOME.'/.vim/bundle/c/c-support/templates/Templates'
let g:C_MapLeader = ','
" C-SUPPORT }}}

" SYNTASTIC {{{
let g:syntastic_enable_signs = 1
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_auto_loc_list = 1
" SYNTASTIC }}}

" LEADERF {{{
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShowDevIcons = 0
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "Iosevka" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_RgConfig = ["--max-columns=150", "--glob=!node_modules/*", "--glob=!dist/*",]

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" Search current word in current buffer
noremap <leader>fW :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR><CR>
" Search current word
noremap <leader>fw :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR><CR>
" Search
noremap <leader>fs :<C-U><C-R>=printf("Leaderf! rg -e ")<CR>
" Search visually selected text literally
xnoremap <leader>fv :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" Recall last search
noremap <leader>fS :<C-U>Leaderf! rg --recall<CR>
" }}}

" NNN {{{
" Disable default mappings
let g:nnn#set_default_mappings = 0
" Set custom mappings
nnoremap <silent> <leader>nn :NnnPicker<CR>
" Start n³ in the current file's directory
nnoremap <silent> <leader>nh :NnnPicker %:p:h<CR>
" }}}

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
let g:ycm_add_preview_to_completeopt = '0'
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap gd :YcmCompleter GoToDefinition<CR>
set completeopt-=preview
set completeopt+=popup
" load language server configuration
source /home/jakub/dev/prv/lsp-examples/vimrc.generated
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

" YANKCODE {{{
map <leader>y <plug>YankCode
" YANKCODE }}}

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
        autocmd BufRead /tmp/neomutt* :source ~/.vim/mail.vim
    augroup END
endif
" AUTOCMD }}}
