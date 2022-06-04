let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspacemodules/thematrix
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +2077 ~/workspacemodules/thematrix/stableconsistency.tex
badd +1 term://~/workspacemodules/thematrix//9070:zathura\ --synctex-forward\ 2077:82:/home/yasha/workspacemodules/thematrix/stableconsistency.tex\ /home/yasha/workspacemodules/thematrix/build/stableconsistency.pdf
argglobal
%argdel
$argadd stableconsistency.tex
edit ~/workspacemodules/thematrix/stableconsistency.tex
argglobal
balt term://~/workspacemodules/thematrix//9070:zathura\ --synctex-forward\ 2077:82:/home/yasha/workspacemodules/thematrix/stableconsistency.tex\ /home/yasha/workspacemodules/thematrix/build/stableconsistency.pdf
setlocal fdm=expr
setlocal fde=getline(v:lnum)=~'^s*'.&commentstring[0]
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2140 - ((23 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2140
normal! 026|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
