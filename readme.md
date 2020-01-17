# aumat250-problem-solving
Contains sources to my homework assignments to AUMAT 250 (Discrete Mathematics) for University of Alberta (Augustana Faculty). A TeX distribution is required to compile each of the sources.

## Packages
The following packages that will be needed are:
- biblatex
- biber
- hyperref
- wrapfig
- booktabs
- titling
- fancyhdr
- enumitem
- datetime2
- csquotes
- microtype
- lm
- inconsolata
- mathtools
- textcomp
- siunitx (might need `expl3`)
  - `expl3`
- parskip
- cancel

Other dependencies needed by the above listed packages has not been listed (completely) yet. I do strongly recommend to use a full installation of TeX Live or MiKTeX.

## Building
```bash
$ cd /path/to/this/repo
$ latexmk -pdf // compiles all documents
$ latexmk -pdf problem6.tex // compiles one of the documents (e.g. problem6.tex)
```