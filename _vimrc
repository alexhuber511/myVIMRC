" _vimrc Alexander Huber 
" f�r Gvim 7.4 auf Windows 8
" Version 26/03/16


set nocompatible
set backspace=2

" Einr�ckung setzen
set autoindent
set shiftwidth=2

execute pathogen#infect()

" Dateitypenerkennung und Syntax-Highlighting
filetype on 
filetype plugin on
filetype indent on

syntax on 

" Das Verzeichnis f�r Viewdateien neu setzen 
" (Standard-Verzeichnis in Windows hat keinen Schreibzugriff f�r Normalnutzer)
set viewdir=$HOME/vimfiles/view

" Automatisches Speichern und Laden von Views (vor allem Faltungen)
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" Encoding setzen (sollte Probleme mit Umlauten vermeiden)
set encoding=utf-8

" Schriftart und -gr��e setzen
set guifont=Consolas:h14

" Farbschema setzen
colorscheme desert

" Statuslinie setzen
set laststatus=2
set statusline=%t\ -\ Zeile:\ %l/%L\ -\ Spalte:\ %c

" Tastenk�rzel
"--------------------
"
" Den Mapleader auf Komma setzen
:let mapleader = ","

" Mit jj aus dem Einf�gemodus in den Normalmodus wechseln
:inoremap jj <Esc>

" Mit hh Wortvervollst�ndigung aktivieren
:inoremap hh <C-P>

" F1 schaltet Zeilennummerierung ein und aus
:nnoremap <F1> :set number!<CR>
:inoremap <F1> <Esc>:set number!<CR>

" Mit 9 im Normalmodus an Zeilenende springen 
" (leichter zu erreichen als $)
:nnoremap 9 $

" F2 speichert ab und setzt vim im Einf�gemodus
" zur�ck in den Normalmodus
:nnoremap <F2> :w<CR>
:inoremap <F2> <Esc>:w<CR>

" F3 f�gt aus anderen Anwendungen kopierten Inhalt ein.
" (Vergleichbar Strg+V)
:nnoremap <F3> "+gP
:inoremap <F3> <Esc>"+gP

" Pfeil runter geht zum n�chsten Buffer
" Ebenso ii im Normalmodus
:nnoremap <DOWN> :bn<CR>
:nnoremap ii :bn<CR>

" Pfeil hoch geht zum vorherigen Buffer
:nnoremap <UP> :bp<CR>

" Leader + ev starten _vimrc in separatem Fenster
:nnoremap <leader>ev :split $MYVIMRC<CR>

" Leader + sv f�hren _vimrc neu aus
:nnoremap <leader>sv :source $MYVIMRC<CR>

" Leader + nt �ffnet NERDTree
:nnoremap <leader>nt :NERDTree<CR>

" Leader + q schlie�t Buffer im aktiven Fenster, beh�lt das Fenster aber bei
" (nutzt Plugin Bbye)
:nnoremap <leader>q :Bdelete<CR>
