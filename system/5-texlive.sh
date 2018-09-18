#!/bin/bash

sudo dnf install -y texlive texlive-xetex \
  texlive-babel-russian texlive-hyphen-russian

sudo dnf install -y http://ftp.gwdg.de/pub/opensuse/repositories/home:/zhonghuaren/Fedora_`rpm -E %fedora`/noarch/cm-unicode-fonts-0.7.0-191.1.noarch.rpm
