" environment specific {{{
let s:os = "linux"
if system('uname') == "CYGWIN_NT-6.1"
  let s:os = "cygwin"
endif

let s:hostname = system('hostname')

let s:VIM_DIR = expand($HOME).'/.vim'
" }}}


" vim-plug {{{
    " Specify a directory for plugins
    " - For Neovim: ~/.local/share/nvim/plugged
    " - Avoid using standard Vim directory names like 'plugin'
    call plug#begin('~/.vim/plugged')

    " Make sure you use single quotes

    " autocomplete {{{
        Plug 'ervandew/supertab'
        Plug 'tpope/vim-surround'
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    " }}}

    " search {{{
        Plug 'yegappan/grep'
        Plug 'mileszs/ack.vim'
    " }}}

    " replace {{{
        Plug 'brooth/far.vim'
    " }}}

    " undo {{{
        Plug 'mbbill/undotree'
    " }}}

    " increment {{{
        Plug 'triglav/vim-visual-increment'
        Plug 'vim-scripts/VisIncr'
    " }}}

    " DrawIt {{{
        Plug 'vim-scripts/DrawIt'
    " }}}

    " Tabular {{{
        Plug 'godlygeek/tabular'
    " }}}

    " TaskList {{{
        Plug 'vim-scripts/TaskList.vim'
    " }}}

    " Diff {{{
        Plug 'will133/vim-dirdiff'
    " }}}

    " other {{{
        Plug 'vim-scripts/highlight.vim'
"        Plug 'lfv89/vim-interestingwords'
        Plug 'myusuf3/numbers.vim'
    " }}}

    " customized menu {{{
        Plug 'skywind3000/quickmenu.vim'
    " }}}

    " tags {{{
"        Plug 'ludovicchabant/vim-gutentags'
        Plug 'majutsushi/tagbar'
    " }}}

    " align {{{
        Plug 'junegunn/vim-easy-align'
    " }}}

    " async {{{
        Plug 'skywind3000/asyncrun.vim'
    " }}}

    " make {{{
        Plug 'mh21/errormarker.vim'
    " }}}

    " VCS {{{
        Plug 'mhinz/vim-signify'

        " hg {{{
            Plug 'phleet/vim-mercenary'
            Plug 'ludovicchabant/vim-lawrencium'
        " }}}

        " git {{{
            Plug 'tpope/vim-fugitive'
        " }}}
    " }}}

    " location {{{
        Plug 'tpope/vim-unimpaired'

        " Ctrlp {{{
            Plug 'ctrlpvim/ctrlp.vim'
            Plug 'tacahiroy/ctrlp-funky'
        " }}}

        Plug 'justinmk/vim-dirvish'

        " vim-easymotion {
            Plug 'easymotion/vim-easymotion'
            Plug 'haya14busa/incsearch.vim'
            Plug 'haya14busa/incsearch-easymotion.vim'
        " }

        " fzf {
            Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
            Plug 'junegunn/fzf.vim'
        " }
    " }}}

    " comments {{{
        Plug 'scrooloose/nerdcommenter'
    " }}}

    " status line {{{
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'bling/vim-bufferline'
    " }}}

    " colorscheme {{{
        Plug 'tomasr/molokai'
        Plug 'dracula/vim'
        " Plug 'altercation/vim-colors-solarized'
    " }}}

    " session {{{
        Plug 'xolox/vim-misc'
        Plug 'xolox/vim-session'
    " }}}

    " language {{{
        Plug 'kana/vim-textobj-user'
        Plug 'kana/vim-textobj-indent'
        Plug 'kana/vim-textobj-syntax'
        Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim'] }
        Plug 'sgur/vim-textobj-parameter'

        " Plug 'Valloric/YouCompleteMe', { 'for':['c', 'cpp'] }

        Plug 'Shougo/echodoc.vim' 

        " C++ {
            Plug 'octol/vim-cpp-enhanced-highlight', { 'for':['c', 'cpp'] }
            Plug 'WolfgangMehner/c-support', { 'for': ['c', 'cpp'] }
        " }

        " python {
            Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
        " }

        " perl {
            Plug 'WolfgangMehner/perl-support', { 'for': 'perl' }
        " }

        " bash {
"            Plug 'WolfgangMehner/bash-support', { 'for': 'bash' }
            Plug 'WolfgangMehner/bash-support'
        " }

        " Doxygen {
            Plug 'mrtazz/DoxygenToolkit.vim'
        " }

        " Latex {
            Plug 'lervag/vimtex', { 'for': 'latex' }
            Plug 'WolfgangMehner/latex-support', { 'for': 'latex' } 
        " }

        " lint {
            Plug 'w0rp/ale', { 'for':['bash', 'c', 'cpp', 'perl', 'vim', 'latex', 'matlab'] }
        " }

        " HTML & CSS {
            Plug 'mattn/emmet-vim', { 'for':['html', 'css'] }
        " }

        " vim {
            Plug 'WolfgangMehner/vim-support', { 'for': 'vim' }
        " }

        " jinja {
            Plug 'Glench/Vim-Jinja2-Syntax'
        " }
    " }}}

    " tmux {{{
        Plug 'christoomey/vim-tmux-navigator'
        Plug 'benmills/vimux'
    " }}}

    " Initialize plugin system
    call plug#end()
" }}}


" Folder text {{{
    augroup ft_vim
        au!
        au FileType vim setlocal foldmethod=marker
    augroup END
" }}}


" General {{{
    set nocompatible
    " share clipboard between vim and system
    set clipboard+=unnamed
    " don't map key alt to menu
    set winaltkeys=no
    " show title in console title bar
    set title
" }}}


" GUI {{{
    " don't show tools bar
    set guioptions-=T
" }}}


" Editor {{{
    if filereadable("home")
    colorscheme molokai
    else
    colorscheme koehler
    endif

    set cursorline
    hi CursorLine term=bold cterm=bold guibg=Grey40
    set textwidth=100

    " search {{{
        set hlsearch    " highlight searches
        set incsearch   " do inremental searching
    " }}}

    " Language & Encoding {{{
        set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
        set encoding=utf-8
        let $LANG = 'en_US.UTF-8'
    " }}}

    " indent {{{
        set autoindent
        set smartindent
        set cindent " do C-style indenting
    " }}}

    " tab {{{
        function Tab4()
            set tabstop=4 softtabstop=4 shiftwidth=4 smarttab expandtab
        endfunction

        function Tab2()
            set tabstop=2 softtabstop=2 shiftwidth=2 smarttab expandtab
        endfunction

        if filereadable("home")
            call Tab4()
        else
            call Tab2()
        endif
    " }}}

    " auto remove trailing whitespace
    autocmd FileType c,cpp,python,perl autocmd BufWritePre <buffer> %s/\s\+$//e

    filetype plugin on
" }}}


" diff
set diffopt+=iwhite

" makefile
autocmd FileType make setlocal noexpandtab

" C++ {{{
au BufNewFile,BufRead *.impl set filetype=c++
" }}}

" tags {{{
set tags=./.tags;,.tags

" set project identification file for gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" use .tags instead of tags as tagfile so that it can be ignored in .gitignore
let g:gutentags_ctags_tagfile = '.tags'

" put all tags generated in ~/.cache/tags to avoid polluting project
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" }}}


" asyncrun {{{
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6

" ring the bell to notify you job finished
let g:asyncrun_bell = 1

" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
" }}}


" make {{{
    let g:asyncrun_auto = "make"
" }}}


" lint {{{
    let g:ale_linters_explicit = 1
    let g:ale_completion_delay = 500
    let g:ale_echo_delay = 20
    let g:ale_lint_delay = 500
    let g:ale_echo_msg_format = '[%linter%] %code: %%s'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:airline#extensions#ale#enabled = 1

    let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
    let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
    let g:ale_c_cppcheck_options = ''
    let g:ale_cpp_cppcheck_options = ''

    let g:ale_sign_error = "\ue009\ue009"
    hi! clear SpellBad
    hi! clear SpellCap
    hi! clear SpellRare
    hi! SpellBad gui=undercurl guisp=red
    hi! SpellCap gui=undercurl guisp=blue
    hi! SpellRare gui=undercurl guisp=magenta
" }}}


" YCM {{{
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_show_diagnostics_ui = 0
    let g:ycm_server_log_level = 'info'
    let g:ycm_min_num_identifier_candidate_chars = 2
    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_complete_in_strings=1
    let g:ycm_key_invoke_completion = '<c-z>'
    set completeopt=menu,menuone

    noremap <c-z> <NOP>

    let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
" }}}


" echodoc {{{
    set noshowmode
" }}}


" airline {{{
"  let g:airline#extensions#tabline#enabled = 1
  "let g:airline#extensions#tabline#show_buffers = 1
  "let g:airline#extensions#bufferline#enabled = 1

  "" if !exists('g:airline_symbols')
  ""   let g:airline_symbols = {}
  "" endif

  "" let g:airline_left_sep = '▶'
  "" let g:airline_right_sep = '◀'
  if s:hostname[0:3] == "FNSH"
    let g:airline_theme='angr'
  endif
" }}}


" vim-easymotion {{{
    " <Leader>f{char} to move to {char}
    map  <Leader>f <Plug>(easymotion-bd-f)
    nmap <Leader>f <Plug>(easymotion-overwin-f)

    " s{char}{char} to move to {char}{char}
    nmap s <Plug>(easymotion-overwin-f2)

    " Move to line
    map <Leader>L <Plug>(easymotion-bd-jk)
    nmap <Leader>L <Plug>(easymotion-overwin-line)

    " Move to word
    map  <Leader>w <Plug>(easymotion-bd-w)
    nmap <Leader>w <Plug>(easymotion-overwin-w)
" }}}


" incsearch-easymotion {{{
    " You can use other keymappings like <C-l> instead of <CR> if you want to
    " use these mappings as default search and somtimes want to move cursor with
    " EasyMotion.
    function! s:incsearch_config(...) abort
        return incsearch#util#deepextend(deepcopy({
                    \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
                    \   'keymap': {
                    \     "\<CR>": '<Over>(easymotion)'
                    \   },
                    \   'is_expr': 0
                    \ }), get(a:, 1, {}))
    endfunction

    noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
    noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
    noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
" }}}


" DoxygenToolkit {{{
    " let g:DoxygenToolkit_commentType="C"
    " let g:DoxygenToolkit_briefTag_pre="===  FUNCTION  ======================================================================\n "
    let g:DoxygenToolkit_briefTag_funcName = "yes"
    let g:DoxygenToolkit_paramTag_pre="@Param "
    let g:DoxygenToolkit_returnTag="@Returns   "
    " let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
    " let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
    let g:DoxygenToolkit_authorName="Wu Xufeng"
" }}}


" ack {{{
    let g:ackprg = 'ag --vimgrep'
" }}}


" Ctrlp {{{
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
    " set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }

    if executable('ag')
        " Use Ag over Grep
        set grepprg=ag\ --nogroup\ --nocolor

        " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    else
        let g:ctrlp_user_command = 'find %s -type f'
    endif

    " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" }}}


" xxx-support {{{
    filetype on
    filetype plugin on
" }}}
