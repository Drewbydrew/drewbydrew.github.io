#!/bin/bash
sudo find /github/drewbydrew.github.io/projects -name ".DS_Store" -depth -exec rm {} \ ; cd /github/drewbydrew.github.io/projects
dpkg-deb -b Tutone /github/drewbydrew.github.io/debs
cd /github/drewbydrew.github.io
dpkg-scanpackages debs / > Packages
bzip2 -fks Packages
git add —-all
git commit -m “Added new icons”
git push
