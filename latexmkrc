$pdflatex = "lualatex -synctex=1 
-interaction=nonstopmode 
-halt-on-erro %O %S";
$pdf_mode = 1;
$dvi_mode = 0; 
$view= 'none';
$postscript_mode = 0;
$out_dir = 'build';
