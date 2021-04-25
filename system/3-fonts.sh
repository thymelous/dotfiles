mkdir /tmp/fonts_inst
cd /tmp/fonts_inst

mkdir -p ~/.local/share/fonts/

# Fira (interface, text editing)
curl -L https://github.com/mozilla/Fira/archive/4.202.tar.gz | tar xz
mv Fira-4.202/ttf/*.ttf ~/.local/share/fonts/

# Computer Modern Unicode (TeX)
curl ftp://canopus.iacp.dvo.ru/pub/Font/cm_unicode/cm-unicode-0.6.3a-otf.tar.gz | tar xz
mv cm-unicode-0.6.3a/*.otf ~/.local/share/fonts/

# Microsoft fonts
sudo dnf install -y cabextract
for c in times32.exe impact32.exe; do
  wget -O $c https://teamleader-doc-processing-fonts.s3.amazonaws.com/$c
  cabextract --lowercase $c
done
mv *.ttf ~/.local/share/fonts/

fc-cache

cd ..
rm -r fonts_inst
