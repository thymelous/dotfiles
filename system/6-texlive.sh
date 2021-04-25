#!/bin/bash

sudo dnf install -y texlive texlive-xetex \
  texlive-babel-russian texlive-hyphen-russian \
  texlive-wrapfig texlive-floatrow texlive-adjustbox texlive-upquote texlive-ulem \
  texlive-multirow texlive-pythontex texlive-epstopdf \
  texlive-fontawesome texlive-tcolorbox texlive-dashrule \
  texlive-biblatex texlive-biblatex-gost texlive-xurl \
  texlive-textpos texlive-isodate texlive-csvsimple texlive-minted texlive-algorithm2e

sudo dnf install -y http://ftp.gwdg.de/pub/opensuse/repositories/home:/zhonghuaren/Fedora_`rpm -E %fedora`/noarch/cm-unicode-fonts-0.7.0-191.1.noarch.rpm
