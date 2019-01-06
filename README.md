# vim-cheat-sheet

just my vim cheat sheet  

https://dotfiles.github.io/

https://vimawesome.com/  
http://www.vim-bootstrap.com  
https://medium.com/@olegsmetanin/vim-recipes-ac65f75f26bf
https://www.cs.oberlin.edu/~kuperman/help/vim/indenting.html

## Tools

Debian for Windows  
https://github.com/mintty/wsltty  
https://nerdfonts.com/ (SourceCodePro)

## Todo

https://github.com/amix/vimrc

u: undo  
Ctrl+r: redo

search  
deselect

duplicate line  
move line up  
move line down  
multiple cursors  
whitespace

## Navigation

h = left  
j = down  
k = up  
l = right

0 = start of line  
$ = end of line

gg = top of document  
G = buttom of document

123gg = go to line 123


TODO: modifiers

w = start of next word  
W = ?  
b = start of previous word  
e = end of word  

a = append?  
A = append?  
R = replace  

o = open line below  
O = open line above

:s/searchterm  
:s/searchterm/replaceterm  
:s/searchterm/replaceterm/ig i = nocase, g = all  ?

with searchresults:  
N = next result ?
n = previous result ?

## Copy / Paste / Delete

x = delete current char

y = copy word?
yy = copy line

pp = paste line

dd = delete line?

d$ = delete from cursor until end of line?



## Open

* :e <filename>
* :Ex <directory> (to browse files)
* :Ex on its own will open the pwd.
* :enew (create an empty buffer)

## Tabs

open multiple: vim -p file1 file2

* newtab: :tabe(dit) <filename>
* listall: :tabs
* Next tab: gt
* Prior tab: gT
* Numbered tab: nnngt
* close: :tabclose
* close but current: :tabo(nly)

## Split Views

open multiple: vim -o file1 file2

* split current
* vertically: Ctrl+W, v
* horizontally: Ctrl+W, s
* :split
* horizontal: sp <filename>
* vertical: vs <filename>

## Buffers

open into buffers :n <filename> <filename>

* list all: :ls
* :bf            # Go to first file.
* :bl            # Go to last file
* :bn            # Go to next file.
* :bp            # Go to previous file.
* :bw            # Close file.

## Commands

* quit, close all files, not saving: :qa
* quit, close all fines and save: :qwa

## Comments

Ctrl+v: block selection  
x: deletes  
Shift+i: # esc adds

# Plugins

https://github.com/morhetz/gruvbox  
https://github.com/rafi/awesome-vim-colorschemes

https://github.com/VundleVim/Vundle.Vim  
https://github.com/Yggdroot/indentLine  
https://github.com/vim-airline/vim-airline  
https://github.com/airblade/vim-gitgutter  
https://github.com/kshenoy/vim-signature  
https://github.com/w0rp/ale  
https://github.com/mhinz/vim-startify  
https://github.com/scrooloose/nerdtree  
https://github.com/Xuyuanp/nerdtree-git-plugin  
https://github.com/easymotion/vim-easymotion  
https://github.com/justinmk/vim-dirvish  
https://github.com/ctrlpvim/ctrlp.vim  
https://github.com/ryanoasis/vim-devicons  
http://majutsushi.github.io/tagbar

https://github.com/neoclide/coc.nvim
