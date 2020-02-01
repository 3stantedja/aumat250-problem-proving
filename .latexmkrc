$pdf_mode = 1;
$clean_ext = "bbl run.xml";
ensure_path(
	'TEXINPUTS',
	'./tex-common//'
);
$out_dir = "./output/"