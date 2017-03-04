#!/bin/bash
cd /github
find . -name .DS_Store -type f -delete
dpkg-deb -b /github/backup/projects/Tutone /github/drewbydrew.github.io/repo/debs
dpkg-deb -b /github/backup/projects/Tutone\ \(Legacy\) /github/drewbydrew.github.io/repo/debs
dpkg-deb -b /github/backup/projects/iOS\ 9\ Lock\ Sound /github/drewbydrew.github.io/repo/debs
dpkg-deb -b /github/backup/projects/iOS\ 8-8.3\ Music\ Icon /github/drewbydrew.github.io/repo/debs
dpkg-deb -b /github/backup/projects/El\ Capitan\ Loading\ Indicator /github/drewbydrew.github.io/repo/debs
cd /github/drewbydrew.github.io/repo
dpkg-scanpackages debs / > Packages
bzip2 -fks Packages
