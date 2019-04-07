" Indent and Editing
set tw=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab


" Spelling
set spell

" VimTeX Specific Config
let g:tex_flavor = 'latex'
" Local Leader
:let maplocalleader = "\\"
:let g:vimtex_view_method = 'zathura'
:let g:vimtex_quickfix_mode = 0

let g:vimtex_compiler_latexmk_engines = {
    \ '_' : '-lualatex'
    \}

let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : 'livepreview',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-lualatex',
    \   '-silent',
    \   '-synctex=1',
    \   '-interaction=nonstopmode'
    \ ]
    \}


if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
noremap <C-S-k> :VimtexTocOpen <CR>

let g:vimtex_view_automatic=0
let g:vimtex_index_split_width=100
let g:vimtex_index_hide_line_numbers=1


" Remove Trailing Whitespace on Save
autocmd BufWritePre * %s/\s\+$//e

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
