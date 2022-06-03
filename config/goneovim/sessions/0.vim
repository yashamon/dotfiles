let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspacemodules/novikov
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1430 ~/workspacemodules/novikov/kan.tex
badd +1 term://~/workspacemodules/novikov//15110:latexmk\ -pvc\ -halt-on-error\ -synctex=1\ -file-line-error\ -f\ -gg\ kan.tex
argglobal
%argdel
$argadd kan.tex
edit ~/workspacemodules/novikov/kan.tex
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 2resize ' . ((&columns * 52 + 39) / 79)
argglobal
setlocal fdm=expr
setlocal fde=getline(v:lnum)=~'^s*'.&commentstring[0]
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1430 - ((4 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1430
normal! 0
wincmd w
argglobal
if bufexists("~/workspacemodules/novikov/kan.tex") | buffer ~/workspacemodules/novikov/kan.tex | else | edit ~/workspacemodules/novikov/kan.tex | endif
if &buftype ==# 'terminal'
  silent file ~/workspacemodules/novikov/kan.tex
endif
setlocal fdm=expr
setlocal fde=getline(v:lnum)=~'^s*'.&commentstring[0]
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1467 - ((28 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1467
normal! 021|
wincmd w
argglobal
enew
balt ~/workspacemodules/novikov/kan.tex
setlocal fdm=expr
setlocal fde=getline(v:lnum)=~'^s*'.&commentstring[0]
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
2wincmd w
exe 'vert 2resize ' . ((&columns * 52 + 39) / 79)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFAc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
