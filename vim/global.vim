syntax enable

set nocompatible
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set laststatus=2
set number
set hidden
set tags=./.tags;,~/.vimtags
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set omnifunc=syntaxcomplete#Complete
set clipboard=unnamed

filetype on
filetype indent on
filetype plugin on

let g:onedark_termcolors = 16
let g:airline_theme = 'one'
let g:airline_powerline_fonts = 1
let g:easytags_dynamic_files = 1
let g:easytags_async = 1
let g:rspec_command = "Dispatch bundle exec rspec {spec}"
let g:rspec_runner = "os_x_iterm"
let g:syntastic_ruby_checkers = ['rubocop', 'rubylint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:ruby_debugger_progname = 'mvim'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <C-m> :NERDTreeToggle<CR>

noremap <Up> :echo "No up for you!"<CR>
noremap <Down> :echo "No down up for you!"<CR>
noremap <Left> :echo "No left for you!"<CR>
noremap <Right> :echo "No right for you!"<CR>

colorscheme onedark
