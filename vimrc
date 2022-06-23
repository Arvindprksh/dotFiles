

function! GetFile()
  let filename = expand('%:t:r')
  echo filename
endfunction


"sets an alias
set et!
set hlsearch
"makes sure searches highlight the text
set title

syntax on
execute pathogen#infect()
colorscheme monokai
"this is obvious.. it provides a torte colorscheme
set number
"this enables line numbers
"
filetype plugin indent on
"show existing tab with 4 spaces width ( Normal style) 
 set tabstop=4
" when indenting with '>', use 4 spaces width
 set shiftwidth=4
" On pressing tab, insert 4 spaces

" This is kernel style indendation
"set tabstop=8
"set softtabstop=8
"set shiftwidth=8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1

set expandtab

set clipboard=unnamedplus


 command TREE NERDTreeToggle

 "optimization
  set autochdir
  set tags=tags;

" autocmd BufWritePre * %s/\s\+$//e

command ClearSpace %s/\s\+$//e


  "To enable mouse for copying
set mouse+=a

set guifont=Monospace\ 12


"netrw - default vim file explorer to configure it like NERDTree
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
map <C-k> :s/^/\/\/<CR> /<Up><Up><CR> <C-o>

set laststatus=2
" Enable statusline always
"set statusline+=%{FugitiveStatusline()}

"function! GitBranch()
"  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"function! StatuslineGit()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

"set statusline=
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 


set t_TI= t_TE=

"To prevent Youcompleteme preview or scratch window
let g:ycm_autoclose_preview_window_after_insertion = 1
"Setting it to 0 , disables the error checking (squggly lines)
"Setting it to 1 , enables it 
let g:ycm_show_diagnostics_ui = 0

" Tab switching shortcut in vim
nnoremap H gT
nnoremap L gt

" Map alt-x keys to jump to a tab
for i in range(1, 8)
  execute "nmap \<M-" . i . "> " . i . "gt"
endfor
nmap <M-9> :tablast<CR>


"This is to map yy to global clipboard
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p



"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

"set laststatus=2

"Disable copilot by default
"Copilot disable
let g:airline_theme='dark'
let g:python3_host_prog = '/usr/bin/python3'
