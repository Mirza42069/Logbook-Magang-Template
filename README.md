# Logbook Magang Template

<p align="center">
  Minimal internship logbook template in LaTeX (Bahasa Indonesia)
</p>

<div align="center">
  <a href="https://github.com/Mirza42069/Logbook-Magang-JOBMedcoPertamina/actions/workflows/compile-pdfs.yml">
    <img alt="Compile PDF" src="https://github.com/Mirza42069/Logbook-Magang-JOBMedcoPertamina/actions/workflows/compile-pdfs.yml/badge.svg" />
  </a>
  <a href="overleaf/logbook.pdf">
    <img alt="Logbook PDF" src="https://img.shields.io/badge/logbook-pdf-green.svg" />
  </a>
</div>

<br />

## Quick Start

1. Download [Logbook_Template_Overleaf.zip](Logbook_Template_Overleaf.zip)
2. Go to [Overleaf.com](https://www.overleaf.com) and select `New Project` > `Upload Project`
3. Upload `Logbook_Template_Overleaf.zip`
4. Click **Recompile** (works with Overleaf default compiler)

For best visual match with the original Excel (Calibri), use **XeLaTeX** or **LuaLaTeX**.


## Preview

You can see [PDF](overleaf/logbook.pdf)

| Page 1 |
|:---:|
| [![Logbook Preview](overleaf/logbook.png)](overleaf/logbook.pdf) |

## Local Compile (`logbook2/logbook2.tex`)

```bash
cd logbook2
xelatex logbook2.tex
```

## Overleaf Template Compile (`overleaf/logbook.tex`)

```bash
cd overleaf
pdflatex -interaction=nonstopmode -halt-on-error logbook.tex
```
