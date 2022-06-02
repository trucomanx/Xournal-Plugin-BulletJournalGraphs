#!/bin/bash

mkdir -p deb
mkdir -p ./deb/usr/share/xournalpp/plugins/
cp -r BulletJournalGraphs ./deb/usr/share/xournalpp/plugins

mkdir ./deb/DEBIAN
cp control ./deb/DEBIAN/control

sudo chown -R root.root ./deb

dpkg -b ./deb xournalpp-plugin-bulletjournalgraphs.deb

sudo chown -R fernando.fernando ./deb
rm -f -r ./deb
