# vim-cheat-sheet
just my vim cheat sheet

## Open


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

* list all: :ls
* :bf            # Go to first file.
* :bl            # Go to last file
* :bn            # Go to next file.
* :bp            # Go to previous file.
* :bw            # Close file.


## Commands

* quit, close all files, not saving: :qa
* quit, close all fines and save: :qwa
