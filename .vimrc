

function! GetFile()
  let filename = expand('%:t:r')
  echo filename
endfunction


"sets an alias
set et!
set hlsearch
"makes sure searches highlight the text

syntax on
execute pathogen#infect()

colorscheme atom-dark
"this is obvious.. it provides a torte colorscheme
set number
"this enables line numbers
"
filetype plugin indent on
"show existing tab with 4 spaces width
 set tabstop=4
" when indenting with '>', use 4 spaces width
 set shiftwidth=4
" On pressing tab, insert 4 spaces
 set expandtab

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
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
map <C-k> :s/^/\/\/<CR> /<Up><Up><CR> <C-o>

set laststatus=2
" Enable statusline always
"set statusline+=%{FugitiveStatusline()}

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 


