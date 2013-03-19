syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype

runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set autoindent                " always set autoindenting on
set autoread                  " auto read files chaged on disk
set background=light          " we are using dark background in vim
set backspace=indent,eol,start " allow backspacing over autoindent, EOL, and BOL
set clipboard=unnamedplus        " sharing windows clipboard
set completeopt=menuone,longest,preview
set cursorline                " have a line indicate the cursor location
set encoding=utf-8            " set enconding for file
set expandtab                 " use spaces, not tabs, for autoindent/tab key.
set ffs=unix,dos,mac          " Try recognizing dos, unix, and mac line endings.
set fileencoding=utf-8        " set file enconding
set fillchars=""              " get rid of silly characters in separators
set fillchars+=stl:\ ,stlnc:\ " TEST
set formatoptions+=t          " controls wrapping enablementd
set foldcolumn=1              " show the fold column
set foldlevel=99              " don't fold by default
set foldmethod=indent         " allow us to fold on indents
set foldnestmax=3             " deepest fold is 3 levels
set grepprg=ack-grep          " replace the default grep program with ack

set guioptions=acg            " autoselect, console dialogs, grey menu items
set hidden                    " This makes vim act like all other editors
set history=1000              " cmdline history
set hlsearch                  " hilight searches by default
set ignorecase                " ignore case on search
set incsearch                 " find the next match as we type the search
set laststatus=2              " always show statusline
set lazyredraw                " don't update display while executing macros
set linebreak                 " don't wrap textin the middle of a word
"set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
set list
set ls                        " always show status line
set matchpairs+=<:>           " show matching <> (html mainly) as well
set modeline                  " Allow vim options to be embedded in files;
set modelines=5               " they must be within the first or last 5 lines.
set noautowrite               " Never write a file unless I request it.
set noautowriteall            " NEVER.
set noautoread                " Don't automatically re-read changed files.
set nobackup                  " don't write a backup file
set nocompatible              " don't be compatible with vi
set noerrorbells              " don't bell
set nofsync                   " let OS decide when to flush disk
set nofoldenable              " don't fold by default
set nostartofline             " avoid moving cursor to BOL when jumping around
set noswapfile                " don't create a swap file
set nowritebackup             " don't write a backup file
set number                    " display line numbers
set numberwidth=1             " using only 1 column/space while possible
set pastetoggle=<f2>          " disable all smartness to paste code
set printoptions=header:0,duplex:long,paper:A4 "printing options
set pumheight=6               " Keep a small completion window
set relativenumber            " line numbering things
set report=0                  " commands always print changed line count.
set ruler                     " show the cursor position all the time
set scrolloff=6               " keep 6 context lines above and below the cursor
set shiftround                " rounds indent to a multiple of shiftwidth
set shiftwidth=4              " but an indent level is 2 spaces wide.
set showbreak=...
set showcmd                   " show incomplete cmds down the bottom
set showmatch                 " briefly jump to a paren once it's balanced
set showmode                  " show current mode down the bottom
set sidescroll=1              " 
set sidescrolloff=15          "
set smartcase                 " upper/lower no difference
set smarttab                  " handle tabs more intelligently
set smartindent               " use smart indent if there is no indent file
set softtabstop=4             " <BS> over an autoindent deletes both spaces.
"set statusline=%F           "tail of the filename
"set statusline+=(%{&ff})
"set statusline+=%=            "left/right separator
"set statusline+=\ %c,           "cursor column
"set statusline+=%l/%L         "cursor line/total lines
"set statusline+=\ %P          "percent through file
"set statusline+=\ %{fugitive#statusline()}
"set statusline=%f\ %h%w%m%r%y%=L:%l/%L\ (%p%%)\ C:%c%V\ B:%o\ F:%{foldlevel('.')}\ %t\ %y\ format:\ %{&ff};\ [%c,%l]
set statusline=%<%F%h%m%r%h%w\ %y\ %{fugitive#statusline()}\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set t_Co=256                 " set 256 color on terminal
set ttyfast                  " 
set tabstop=4                " <tab> inserts 4 spaces 
set title                   " show title in console title bar
set undolevels=1000          " use many muchos levels of undo
set vb t_vb=                 " don't blink 
set visualbell               " don't beep
set virtualedit=all          " Allow the cursor to go in to "invalid" places
set wildignore+=*.o,*.obj,.git,*.pyc
set wildmenu                 " menu completion in command mode on <Tab>
set wildmode=full            " <Tab> cycles between all matching choices.

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ctrlp_map = '<leader>p'
let g:ctrlp_working_path_mode = 2
let g:gundo_width=30
let g:miniBufExplForceSyntaxEnable=1
let g:SuperTabDefaultCompletionType='context'
let g:pep8_map='<leader>8'
let g:Powerline_symbols='fancy'
let g:pydoc_open_cmd = 'vsplit'
let g:pyflakes_use_quickfix=0
let g:ragtag_global_maps=1 
let g:solarized_termcolors=256
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=0
let mapleader=','

map <silent><leader>v :sp ~/.vimrc<CR><C-W>_
map <silent><leader>t <Plug>TaskList
map <silent><leader>n :NERDTreeToggle<CR>
nmap <silent><leader>a <Esc>:Ack!
map <silent><leader>g :GundoToggle<CR>
map <silent><leader>j :RopeGotoDefinition<CR>
map <silent><leader>r :RopeRename<CR>
nmap <silent><leader>tt :TagbarToggle<CR>

nmap <silent><leader>tf <Esc>:Pytest file<CR>
nmap <silent><leader>tc <Esc>:Pytest class<CR>
nmap <silent><leader>tm <Esc>:Pytest method<CR>
nmap <silent><leader>tn <Esc>:Pytest next<CR>
nmap <silent><leader>tp <Esc>:Pytest previous<CR>
nmap <silent><leader>te <Esc>:Pytest error<CR>
map <leader>w :call Browser ()<CR>:redraw!<CR>
"nnoremap <leader>w :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>

nmap <silent><leader>. :lcd %:p:h<CR>
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

"Disable unnecessary keys (Arrows,PgUp,PgDn,Home,End)
inoremap  <Up>      <NOP>
inoremap  <Down>    <NOP>
inoremap  <Left>    <NOP>
inoremap  <Right>   <NOP>
noremap   <Up>      <NOP>
noremap   <Down>    <NOP>
noremap   <Left>    <NOP>
noremap   <Right>   <NOP>

inoremap <Home>     <NOP>
inoremap <End>      <NOP>
inoremap <PageUp>   <NOP>
inoremap <PageDown> <NOP>
noremap <Home>      <NOP>
noremap <End>       <NOP>
noremap <PageUp>    <NOP>
noremap <PageDown>  <NOP>

"ident using tab/s-tab
vnoremap < <gv
vnoremap > >gv

"up/down on wrapped lines
nnoremap j gj
nnoremap k gk

" save files that need root access
cmap w!! w !sudo tee % > /dev/null

if has('autocmd')
    autocmd BufNewFile,BufRead *.mako,*.mak setlocal ft=html
    autocmd BufEnter * lcd %:p:h
    autocmd BufNewFile,BufRead * syn match brancomala '\s\+$' | hi def brancomala ctermbg=red
    autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    autocmd BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand("<amatch>"))
    autocmd BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand("<amatch>"))
    autocmd BufReadPost *.pdf silent %!pdftotext "%" -nopgbrk -layout -q -eol unix -
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
    autocmd BufReadPre *.pdf set ro nowrap
    autocmd BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile> | endif | endif
    autocmd BufWritePost *.pdf silent !lp -s -d pdffg "%"
    autocmd BufWritePost *.pdf silent !mv ~/PDF/% %:p:h
    autocmd BufWritePost *.pdf silent !rm -rf ~/PDF/%
    autocmd BufWritePost *.pdf silent !until [ -e ~/PDF/% ]; do sleep 1; done
    autocmd BufWritePost .vimrc source ~/.vimrc<CR>:exe ":echo 'vimrc reloaded'"<CR>
    autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType python set omnifunc=pythoncomplete#Complete expandtab
    autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
    autocmd InsertEnter * highlight StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
    autocmd InsertLeave * highlight StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
    autocmd vimenter * call s:SetupSnippets()
end

" show a line at column 79
if exists("&colorcolumn")
    set colorcolumn=79
    set textwidth=79
    set formatoptions=qrn1
endif

syn match fatal ".*Fatal.*"
syn match error ".*Error.*"
syn match warn  ".*Warn.*"
syn match debug ".*Debug.*"
syn match info ".*Info.*"

syn match error "^java.*Exception.*"
syn match error "^java.*Error.*"
syn match error ".* R\ \w.*"
syn match error "^\tat .*"

" Highlight colors for log levels.
hi def fatal ctermfg=Red ctermbg=Black
hi def error ctermfg=Red ctermbg=Black
hi def warn ctermfg=Yellow ctermbg=Black
hi def debug ctermfg=Gray ctermbg=Black
hi def info ctermfg=Green ctermbg=Black


function! Itau(ano)
    let ano = a:ano
    g/SALDO/d
    %s/^\(\d\d\/\d\d\)/\1\/ano/g "converter para colocar o ano corrente
    %s/^\(\d\d\)\/\(\d\d\)\/\(\d\d\d\d\)/\3-\2-\1/g "colocar a data no formato correto
    %s/\s\+$// " remover os espacos no final da linha
    %s/\s\+\s\+/\t/g " substituir os espacos por tab
    %s/\(\d\d\d\d-\d\d-\d\d\)\t\(.*\)\t\(.*\)\t\(\d.*\)/\1\t\3\t\2/g " colocar os dados no formato correto
    %s/\(\d\d\d\d-\d\d-\d\d\)\t\(\D.*\)\t\(.*\)/\1\t\3\t\2/g " colocar os dados no formato correto
    %s/\(\t\)\(.*\)\(-\)\(\t\)/\1\3\2\4/g " coloca o sinal de negativo no local correto
endfunction

function! s:SetupSnippets()

    "if we're in a rails env then read in the rails snippets
    if filereadable("./config/environment.rb")
      try
        call ExtractSnips("~/.vim/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/.vim/snippets/eruby-rails", "eruby")
      catch
        call ExtractSnips("~/vimfiles/snippets/ruby-rails", "ruby")
        call ExtractSnips("~/vimfiles/snippets/eruby-rails", "eruby")
      endtry
    endif

    try
      call ExtractSnips("~/.vim/snippets/html", "eruby")
      call ExtractSnips("~/.vim/snippets/html", "xhtml")
      call ExtractSnips("~/.vim/snippets/html", "php")
    catch
      call ExtractSnips("~/vimfiles/snippets/html", "eruby")
      call ExtractSnips("~/vimfiles/snippets/html", "xhtml")
      call ExtractSnips("~/vimfiles/snippets/html", "php")
    endtry
endfunction

function! Browser ()
    let line = getline(".")
    let url = matchstr(line, '[a-z]*:\/\/[^ >,;:]*')
    exec ':silent !x-www-browser -new-tab '.url
endfunction

if has("gui_running")
    set columns=80
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    set guitablabel=%M%t
    set lines=40
endif
cabbr <expr> %% expand('%:p:h')

"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_contrast="high"
"let g:solarized_visibility="low"
colorscheme skittles_berry



" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
