" Ignore these files when completing
set wildignore+=*.class
setlocal textwidth=100
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent

nmap K :JavaDocPreview<CR>

let g:ycm_filetype_blacklist = {}
let g:EclimCompletionMethod = 'omnifunc'
" run `:ProjectCreate <path-to-your-project> -n java` inside vim.
