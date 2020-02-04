# aumat250-problem-solving
Contains sources to my homework assignments to AUMAT 250 (Discrete Mathematics) for University of Alberta (Augustana Faculty). A TeX distribution is required to compile each of the sources.

## Packages
The following packages that will be needed are:
- `latexmk`
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

Other dependencies needed by the above listed packages has not been listed (completely) yet. Check out `/dependencies/test.dep` for a complete list of the loaded packages. I do recommend a full installation of TeX Live, or use MiKTeX and let it download packages on-the-fly. 

## Cloning
`cd` into the directory you want the repo to be in, then:
```bash
$ git clone --recurse-submodules https://github.com/3stantedja/aumat250-problem-proving.git
$ git pull --recurse-submodules // pulls latest changes along with the submodule
```

## Building
Assuming you're in this repo,
```bash
$ latexmk // compiles all documents
$ latexmk problem6.tex // compiles one of the documents (e.g. problem6.tex)
$ latexmk test.tex // compiles the test document (see Additional Notes.)
```
Resulting files will be outputted to `./output/`. MiKTeX users, make sure that Perl and `latexmk` are installed.

## Additional Notes
In test.tex, the line `\RequirePackage{}` is commented out. Uncomment if you want to generate a dependency list, although I can't guarantee it not failing to build (did not fail on my Mac, failed on both Linux VM and Visual Studio Online w/ a custom install scheme). This also requires `fancyvrb` to display the output of the generated .dep file in the document.

Scratch work is saved under `/scratch/`. .bib files are stored in bibliography. Please store them there instead.

`/dotfiles/` and `/.devcontainer/` are setup files for Visual Studio Online (I have not bothered getting around finishing this and will not finish it anytime soon). These (at least in `/.devcontainer/`) contains personal configurations that I would use in Visual Studio (Code/Online).

In theory I could make a Makefile/.tasks.json file to ease building/cleaning but I'm not dedicated enough to do that (and this is only for assignments only so I don't expect anybody to use this in any useful capacity). I'd expect that whatever text editor you're using it should allow building the sources from the editor (with the appropriate extensions/plugins). 
