setlocal iskeyword+=:,-
setlocal makeprg=pdflatex\ -file-line-error\ -interaction=nonstopmode\ %

inoremap <buffer> { {}<ESC>i
inoremap <buffer> [ []<ESC>i
inoremap <buffer> $ $$<ESC>i
vnoremap <buffer> // I%<ESC>

iab <buffer> ,b \begin{
iab <buffer> ,e \end{
iab <buffer> ,i \item
iab <buffer> ,f \frac

