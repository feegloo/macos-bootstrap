" below lines fixes problem with cmd+c (coping text)
" without .vimrc , it doesn't work, but have other features (syntax colors, backspace)
" so below lines fixex cmd+c and brings back other default features, which are available when there is no .vimrc

" syntax highlighting
syntax on

" ctrl+c copies selected text
set clipboard=unnamed

" backspace works normally
set backspace=indent,eol,start
