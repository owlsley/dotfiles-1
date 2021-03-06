"" {{{ bundles

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/bundle')
Plug 'Shougo/vimproc',                         {'do': 'make'}
Plug 'Shougo/unite.vim'
Plug 'thinca/vim-unite-history'
Plug 'Shougo/unite-help'
Plug 'Shougo/unite-outline'
Plug 'Shougo/unite-session'
Plug 'Shougo/neomru.vim'
Plug 'tsukkee/unite-tag'
Plug 'osyo-manga/unite-filetype'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/echodoc'
if has('lua') && (version >= 704 || version == 703 && has('patch885'))
	Plug 'Shougo/neocomplete.vim'
	let g:completionEngine = 'neocomplete'
elseif has('lua')
	Plug 'Shougo/neocomplcache.vim'
	let g:completionEngine = 'neocomplcache'
endif
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/vimfiler',                        {'on': 'VimFiler'}

Plug 'scrooloose/syntastic'
Plug 'gcmt/wildfire.vim'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-tmuxify'
Plug 'bling/vim-airline'
Plug 'Raimondi/delimitMate'
Plug 'justinmk/vim-sneak'
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/vim-easy-align',                {'on': ['<Plug>(EasyAlign)','<Plug>(LiveEasyAlign)']}
Plug 'sjl/gundo.vim',                          {'on': 'GundoToggle'}
Plug 'kana/vim-textobj-user'
Plug 'reedes/vim-textobj-sentence'
Plug 'kana/vim-textobj-function'
Plug 'christoomey/vim-titlecase',              {'on': ['<Plug>Titlecase', '<Plug>TitlecaseLine']}
Plug 'Shougo/vimshell.vim',                    {'on': 'VimShell'}
Plug 'jaxbot/browserlink.vim',                 {'for': ['html', 'javascript', 'css']}
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim',                         {'on': 'Gist'}
Plug 'airblade/vim-gitgutter'
Plug 'DanielFGray/DistractionFree.vim'
Plug 'junegunn/limelight.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'gosukiwi/vim-atom-dark'
Plug 'noahfrederick/vim-noctu'
Plug 'wesQ3/wombat.vim'
Plug 'widatama/vim-phoenix'
Plug 'benjaminwhite/Benokai'

Plug 'tejr/vim-tmux'

Plug 'LaTeX-Box-Team/LaTeX-Box',               {'for': 'tex'}
Plug 'xuhdev/vim-latex-live-preview',          {'for': 'tex'}

Plug 'mattn/emmet-vim',                        {'for': ['html', 'xml', 'xsl', 'xslt', 'xsd', 'css', 'sass', 'scss', 'less', 'mustache', 'php']}
Plug 'Valloric/MatchTagAlways',                {'for': ['html', 'xhtml', 'xml', 'jinja']}
Plug 'tmhedberg/matchit',                      {'for': ['html', 'xml', 'xsl', 'xslt', 'xsd', 'css', 'sass', 'scss', 'less', 'mustache']}
Plug 'gregsexton/MatchTag',                    {'for': ['html', 'xml']}
Plug 'othree/html5.vim',                       {'for': 'html'}
Plug 'groenewege/vim-less',                    {'for': 'less'}
Plug 'hail2u/vim-css3-syntax',                 {'for': ['css', 'scss', 'sass']}
Plug 'digitaltoad/vim-jade',                   {'for': 'jade'}

Plug 'moll/vim-node',                          {'for': 'javascript'}
Plug 'jelera/vim-javascript-syntax',           {'for': 'javascript'}
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'javascript'}
Plug 'marijnh/tern_for_vim',                   {'for': 'javascript', 'do': 'npm install'}
Plug 'pangloss/vim-javascript',                {'for': 'javascript'}
Plug 'sheerun/vim-polyglot',                   {'for': 'javascript'}
Plug 'walm/jshint.vim',                        {'for': 'javascript'}

Plug 'raichoo/purescript-vim',                 {'for': 'purescript'}

Plug 'lukerandall/haskellmode-vim',            {'for': 'haskell'}
Plug 'raichoo/haskell-vim',                    {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim',                    {'for': 'haskell'}
Plug 'ujihisa/neco-ghc',                       {'for': 'haskell'}

Plug 'junegunn/fzf',                           {'dir': '~/.fzf', 'do': 'yes \| ./install'}
call plug#end()
"" }}}

syntax on
filetype plugin indent on

"" TODO: more comments
set number
try | set relativenumber | catch | endtry
set colorcolumn=80
set cursorcolumn cursorline
set hlsearch incsearch
set infercase
set backspace=indent,eol,start
set nowrap
set showmatch
set equalalways
set splitright
set wildmenu wildcharm=<C-z>
set switchbuf=useopen,usetab
set autoindent smartindent smarttab
set tabstop=4 softtabstop=4 shiftwidth=4
set foldmethod=marker
set ruler rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set hidden
set list listchars=tab:\›\ ,trail:★,extends:»,precedes:«,nbsp:•
" set listchars+=eol:↵
set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:-,diff:-
set showcmd
set noshowmode
set nolazyredraw
set autoread
set report=0
set confirm
set modeline modelines=2
set scrolloff=5
""set t_Co=16
set shortmess+=I
set ttimeoutlen=25
set background=dark
try
	set cryptmethod=blowfish
	set cryptmethod=blowfish2
catch | endtry
set sessionoptions-=options
set diffopt=vertical
set pastetoggle=<F6>
set undodir=~/.vim/undo/
set undofile
set undoreload=10000
set backupdir=~/.vim/backups/
set directory=~/.vim/swaps/
set undolevels=1000
let g:mapleader = "\<Space>"

noremap j gj
noremap k gk
noremap gj j
noremap gk k
nnoremap Y y$
vnoremap < <gv
vnoremap > >gv
map ]] ]]zt
map [[ [[zt

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>
command! -bar -nargs=* -complete=help H :vert help <args>
cabbrev w!! w !sudo tee >/dev/null "%"

augroup VIM
	autocmd!
	autocmd BufWritePost ~/.vimrc,~/dotfiles/vimrc source ~/.vimrc | if exists(':AirlineRefresh') | execute 'AirlineRefresh' | endif
	autocmd BufWritePost ~/.tmux.conf,~/dotfiles/*.tmux.conf | if exists('$TMUX') | call system('tmux source-file ~/.tmux.conf && tmux display-message "Sourced .tmux.conf"') | endif
	autocmd FileType vim nnore <silent><buffer> K <Esc>:help <C-R><C-W><CR>
	autocmd VimResized * wincmd =
	autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | execute 'normal! g`"zvzz' | endif
	autocmd FileType markdown,text,man setlocal wrap linebreak colorcolumn=0 nocursorline nocursorcolumn
	autocmd FileType help wincmd L
	autocmd FileType vim-plug setlocal nonu nornu nolist
	if has('nvim')
		autocmd TermOpen * setlocal nolist nocursorline nocursorcolumn
	endif
augroup END

function! InsertNewLine()
	execute "normal! i\<Return>"
endfunction
nnoremap <silent> <Return> <Esc>:call InsertNewLine()<CR>

function! PromptQuit()
	echo 'close current buffer?'
	if nr2char(getchar()) =~ 'Y'
		bd
	endif
	silent! redraw!
endfunction
noremap <silent> Q <Esc>:call PromptQuit()<CR>

function! VisualCmd(command) range abort
	let n = @n
	silent! normal gv"ny
	echo system(a:command, @n)
	let @n = n
endfunction
command! -range=% -nargs=* -complete=shellcmd Filter call VisualCmd(<q-args>)

if has("gui_running")
	colorscheme atom-dark
	set background=dark
	set guioptions-=L
	set guioptions-=r
	set guioptions-=b
	set guioptions-=T
	set guioptions-=m
	if has("gui_gtk2")
		set guifont=Tewi\ 9,DejaVu\ Sans\ Mono\ 8
	endif
else
	colorscheme noctu
endif

"" {{{ auto completion
if exists('g:completionEngine')
	let g:acp_enableAtStartup = 0
	let g:{g:completionEngine}#enable_at_startup = 1
	let g:{g:completionEngine}#enable_smart_case = 1
	let g:{g:completionEngine}#sources#syntax#min_keyword_length = 3
	let g:{g:completionEngine}#auto_completion_start_length = 3
	let g:{g:completionEngine}#sources#dictionary#dictionaries = {  'default' : '' }
	let g:{g:completionEngine}#sources#omni#input_patterns = {}
	let g:{g:completionEngine}#keyword_patterns = {}
	let g:{g:completionEngine}#keyword_patterns['default'] = '\h\w*'
	let g:{g:completionEngine}#data_directory = "~/.vim/cache/neocomplete"
	inoremap <expr><C-g>     {g:completionEngine}#undo_completion()
	inoremap <expr><C-l>     {g:completionEngine}#complete_common_string()
	inoremap <expr><BS>      {g:completionEngine}#smart_close_popup()."\<C-h>"
	inoremap <expr><TAB>     pumvisible() ? "\<C-n>" : "\<TAB>"
endif
"" "}}}

"" {{{ snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets,~/.vim/snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\	"\<Plug>(neosnippet_expand_or_jump)"
\	: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\	"\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
	set conceallevel=2 concealcursor=i
endif
"" }}}

"" {{{ unite.vim settings
let g:unite_data_directory = '~/.vim/cache/unite'
let g:unite_prompt = '» '
let g:unite_source_history_yank_enable = 1
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_force_overwrite_statusline = 0
nnoremap <silent> <leader>ur :<C-u>Unite register -buffer-name=register -auto-resize<CR>
nnoremap <silent> <leader>uy :<C-u>Unite history/yank -buffer-name=yank<CR>
nnoremap <silent> <leader>ub :<C-u>Unite buffer -buffer-name=buffer<CR>
nnoremap <silent> <leader>ug :<c-u>Unite grep -buffer-name=grep <CR>
nnoremap <silent> <leader>uf :<C-u>Unite file_rec/async -buffer-name=files -toggle -auto-resize<CR>
nnoremap <silent> <leader>ue :<C-u>Unite buffer file_mru bookmark file -buffer-name=files<CR>
nnoremap <silent> <leader>uo :<C-u>Unite outline -buffer-name=outline -auto-resize<CR>
nnoremap <silent> <leader>uh :<C-u>Unite help -buffer-name=help -auto-resize<CR>
nnoremap <silent> <leader>ut :<C-u>Unite tag tag/file -buffer-name=tag -auto-resize<CR>
if executable('ag')
	set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
	set grepformat=%f:%l:%C:%m
	let g:unite_source_grep_command='ag'
	let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
	let g:unite_source_grep_recursive_opt=''
	let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden -g ""'
elseif executable('ack')
	set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
	set grepformat=%f:%l:%c:%m
	let g:unite_source_grep_command='ack'
	let g:unite_source_grep_default_opts='--no-heading --no-color'
	let g:unite_source_grep_recursive_opt=''
endif
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
	call unite#custom#profile('default', 'context', {'start_insert': 1})
	call unite#filters#sorter_default#use(['sorter_rank'])
	call unite#filters#matcher_default#use(['matcher_fuzzy'])
	call unite#set_profile('files', 'context.smartcase', 1)
	call unite#custom#source('line,outline', 'matchers', 'matcher_fuzzy')
	imap <buffer> <C-j> <Plug>(unite_select_next_line)
	imap <buffer> <C-k> <Plug>(unite_select_previous_line)
	imap <buffer> <esc> <Plug>(unite_exit)
	nmap <buffer> <esc> <Plug>(unite_exit)
	imap <silent><buffer><expr> <C-x> unite#do_action('split')
	imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
	imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
endfunction
"" }}}

"" {{{ syntax checking
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:echodoc_enable_at_startup=1
"" }}}

"" {{{ tmux integration
let g:tmuxify_custom_command = 'tmux split-window -d -v -p 25'
let g:tmuxify_global_maps = 1
let g:tmuxify_run = {
	\ 'lilypond':   ' for file in %; do; lilypond $file; x-pdf "${file[@]/%ly/pdf}"; done',
	\ 'tex':        ' for file in %; do; texi2pdf $file; x-pdf "${file[@]/%tex/pdf}"; done',
	\ 'ruby':       ' ruby %',
	\ 'python':     ' python %',
	\ 'javascript': ' node %'
\}
"" }}}

"" {{{ gundo settings
nnoremap <F5> :GundoToggle<CR>
let g:gundo_right = 1
let g:gundo_width = 60
let g:gundo_preview_height = 40
"" }}}

"" {{{ searching
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)zvzt
map N  <Plug>(incsearch-nohl-N)zvzt
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
let g:incsearch#consistent_n_direction = 1
let g:incsearch#auto_nohlsearch = 1
let g:incsearch#magic = '\v'

let g:sneak#prompt = '(sneak)» '
map <silent> f <Plug>Sneak_f
map <silent> F <Plug>Sneak_F
map <silent> t <Plug>Sneak_t
map <silent> T <Plug>Sneak_T
map <silent> ; <Plug>SneakNext
map <silent> , <Plug>SneakPrevious

augroup SneakPluginColors
	autocmd!
	autocmd ColorScheme * hi SneakPluginTarget guifg=black guibg=red ctermfg=black ctermbg=red
	autocmd ColorScheme * hi SneakPluginScope  guifg=black guibg=yellow ctermfg=black ctermbg=yellow
augroup END
"" }}}

"" {{{ fugitive shortcuts
nnoremap <leader>gs <Esc>:Gstatus<CR>
nnoremap <leader>gd <Esc>:Gdiff<CR>
nnoremap <leader>gc <Esc>:Gcommit<CR>
nnoremap <leader>gb <Esc>:Gblame<CR>
nnoremap <leader>gl <Esc>:Glog<CR>
nnoremap <leader>gp <Esc>:Git push<CR>
nnoremap <leader>gu <Esc>:Git pull<CR>
"" }}}

"" {{{ status line
let g:airline_theme = 'bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"" }}}

"" {{{ misc plugins
nmap <Leader>a <Plug>(EasyAlign)
vmap <Leader>a <Plug>(EasyAlign)

map + <Plug>(wildfire-fuel)
map _ <Plug>(wildfire-water)

let g:titlecase_map_keys = 0
nmap <silent> <leader>gt <Plug>Titlecase
vmap <silent> <leader>gt <Plug>Titlecase
nmap <silent> <leader>gT <Plug>TitlecaseLine

let g:distraction_free#toggle_tmux = 1
let g:distraction_free#toggle_limelight = 1
noremap <leader>df <Esc>:DistractionsToggle<CR>

let g:limelight_conceal_ctermfg = 'DarkGray'

"" }}}
