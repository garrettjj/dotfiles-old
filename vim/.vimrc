" Core settings
set number
set laststatus=0
"set showtabline=2

" Pathogen
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" Theming
syntax enable
set background=dark
colorscheme synthwave
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE

"let g:SimplenoteUsername = DELETED
" let g:SimplenotePassword = DELETED
let g:SimplenoteSingleWindow=1

" Airline settings
"let g:airline_powerline_fonts = 1
"let g:airline_theme = "lucius"

" Python settings
let g:pymode_python = 'python3'

" Testing VimWiki instead of SimpleNote
nnoremap <Space> za
let wiki_1 = {}
let wiki_1.path = '~/OneDrive/Wiki/'
let wiki_1.nested_syntaxes = {'python': 'python'}
let g:vimwiki_list = [wiki_1]

" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" Markdown quick tricks
map <F12> :Goyo<CR> :setlocal spell<CR> :SoftPencil<CR>
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md SoftPencil

" LaTeX related
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
" let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_latexmk_build_dir = "~/latex"
nnoremap <leader>ls :VimtexCompileSS!<CR>

" LaTeX autocomplete
  if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
  endif
  let g:ycm_semantic_triggers.tex = [
        \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
        \ 're!\\hyperref\[[^]]*',
        \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
        \ 're!\\(include(only)?|input){[^}]*',
        \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
        \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\usepackage(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\documentclass(\s*\[[^]]*\])?\s*\{[^}]*',
        \ 're!\\[A-Za-z]*',
\ ]
