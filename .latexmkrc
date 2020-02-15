$pdf_mode = 1;
$clean_ext = "bbl run.xml";
ensure_path(
	'TEXINPUTS',
	'./tex-common//'
);
$out_dir = "./output/";
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %B';
$bibtex_use = 1;
$biber = "biber %O %S";
$bibtex = "";
