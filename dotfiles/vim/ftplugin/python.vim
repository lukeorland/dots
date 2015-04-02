" Ignore these files when completing
set wildignore+=*.pyc,eggs/**,*.egg-info/**
set textwidth=79

" Add the virtualenv's site-packages to vim path
if has('python')
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
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

" Indentation is handled by the hynek/vim-python-pep8-indent plugin.

let g:ycm_filetype_blacklist = {}

let g:syntastic_python_checkers = ['pylint', 'flake8']

" python.vim plugin
let python_highlight_all = 1

" Hit F6 to wrap this line after 72 characters
" (for comment and docstring lines, per PEP-8)
" http://stackoverflow.com/a/28484482/492631
nmap <F6> :set textwidth=72<CR>gqj:set textwidth=79<CR>
