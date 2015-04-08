#!/bin/sh

sudo apt-get update -y

sudo apt-get install libdb-dev libgd2-xpm-dev libgmp3-dev libperl-dev php5 php5-mysql php5-gd libpng12-dev libgif-dev libjpeg-dev perlmagick

curl -L https://cpanmin.us | perl - --sudo App::cpanminus

curl -O https://raw.githubusercontent.com/movabletype/movabletype/develop/t/cpanfile

# install CPAN modules in cpanfile.
sudo cpanm Crypt::CBC
sudo cpanm --installdeps .

# install CPAN modules for test.
sudo cpanm Clone DateTime DateTime::TimeZone
