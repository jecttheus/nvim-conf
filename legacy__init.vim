" NEOVIM conf file
" On MacOS
" Create the conf file: `touch ~/.config/nvim/init.vim`
" Edit the `init.vim` file as the followings
" -------------------------------------------------------

" Always show line numbers
set number

" Highlight current line
set cursorline

" Map ii to escape insert mode
inoremap ii <Esc>

" Map ii to exit visual mode
vnoremap ii <Esc>

" Map JJ to save the file in insert and normal modes
inoremap JJ <Esc>:w<CR>
nnoremap JJ :w<CR>

" Map WW to exit Neovim in normal mode
nnoremap WW :q<CR>

" Map {{ to move cursor to beginning of line in insert mode
inoremap {{ <Esc>0i

" Map }} to move cursor to end of line in insert mode
inoremap }} <Esc>$a

" Map {{ to move cursor to beginning of line in normal mode
nnoremap {{ 0

" Map }} to move cursor to end of line in normal mode
nnoremap }} $
