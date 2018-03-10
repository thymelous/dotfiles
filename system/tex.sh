#!/bin/bash

mkdir -p /tmp/texlive_inst

cat texlive.profile | sed -e "s|~|$HOME|" > /tmp/texlive_inst/texlive.profile

cd /tmp/texlive_inst

# You may need to change the exclusion patterns based on your system and arch
rsync -av --progress                 \
  --exclude '*.exe'                  \
  --exclude '*.tar'                  \
  --exclude '*.doc.tar.xz'           \
  --exclude '*.source.tar.xz'        \
  --exclude '*-cygwin.tar.xz*'       \
  --exclude '*.win32.tar.xz'         \
  --exclude '*-darwin.tar.xz'        \
  --exclude '*-darwinlegacy.tar.xz'  \
  --exclude '*-solaris.tar.xz'       \
  --exclude '*-netbsd.tar.xz'        \
  --exclude '*-freebsd.tar.xz'       \
  --exclude '*.armel-linux.tar.xz'   \
  --exclude '*.armhf-linux.tar.xz'   \
  --exclude '*.i386-linux.tar.xz'    \
  --exclude '*.powerpc-linux.tar.xz' \
  rsync://mirrors.mi.ras.ru/CTAN/systems/texlive/tlnet/ .

chmod +x ./install-tl
./install-tl -repository . -profile texlive.profile
