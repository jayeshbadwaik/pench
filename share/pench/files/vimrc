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

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
noremap <C-S-k> :VimtexTocOpen <CR>


let g:vimtex_toc_config = {
    \ 'split_width' : '100'
    \}

let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'jobs',
    \ 'background' : 1,
    \ 'build_dir' : './tmp/livepreview',
    \ 'aux_dir' : './tmp/livepreview',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-lualatex',
    \   '-silent',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-cd'
    \ ]
    \}

let g:vimtex_view_automatic=0
let g:vimtex_index_split_width=100
let g:vimtex_index_hide_line_numbers=1


" Remove Trailing Whitespace on Save
autocmd BufWritePre * %s/\s\+$//e

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

function VimtexErrorDisplay(status)
  sign define piet text=>> texthl=ErrorMsg
  let nl = line('$')
  let l=1
  while l <= nl
    if a:status == 0
      exe "sign place ". l . " line=" . l . " name=piet file=".expand("%:p")
    else
      exe "sign unplace " .l
  endif
  let l += 1
  endwhile
endfunction

let g:vimtex_compiler_callback_hooks=['VimtexErrorDisplay']
