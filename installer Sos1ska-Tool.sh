#!/usr/bin/bash

clear
echo '____________¶¶¶'
echo '___________¶___¶'
echo '____________¶¶¶'
echo '____________¶_¶'
echo '____________¶_¶'
echo '__________¶¶¶_¶¶¶'
echo '________¶¶__¶¶¶__¶¶¶'
echo '______¶¶__¶¶¶¶¶¶¶___¶'
echo '_____¶_______________¶'
echo '____¶_________________¶'
echo '____¶_________________¶'
echo '____¶_____¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶____¶_______________¶'
echo '____¶____¶___¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶___¶___¶___________¶¶¶'
echo '____¶___¶___¶_¶¶¶___¶¶¶__¶¶'
echo '____¶___¶___¶_¶¶¶___¶¶¶__¶¶'
echo '____¶___¶___¶___________¶¶¶'
echo '____¶____¶___¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶_____¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶_________________¶'
echo '____¶____¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶___¶__¶__¶__¶__¶'
echo '____¶__¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '____¶__¶___¶__¶__¶__¶'
echo '____¶___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶'
echo '___¶¶¶_________________¶¶¶'
echo '█▀ █▀█ █▀ ▄█ █▀ █▄▀ ▄▀█ ▄▄ █░█ ▄▀█ █▀▀ █▄▀ █▀▀ █▀█ █▀'
echo '▄█ █▄█ ▄█ ░█ ▄█ █░█ █▀█ ░░ █▀█ █▀█ █▄▄ █░█ ██▄ █▀▄ ▄█'

echo 'Начинаем установку Sos1ska-Tool'
sleep 5

apt update && apt upgrade
pkg install git curl python python2 python3 ruby gem nano dos2unix nmap unzip unrar
pip install --upgrade pip
pip install colorama vk_api urllib3 bs4 html2text requests
gem install bundler
sed 's|nokogiri (1.*)|nokogiri (1.8.0)|g' -i Gemfile.lock
gem install nokogiri -v 1.8.0 -- --use-system-libraries
gem install actionpack
bundle update activesupport
bundle update --bundler
bundle install -j5
$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
if [ -e $PREFIX/bin/msfconsole ];then
	rm $PREFIX/bin/msfconsole
fi
if [ -e $PREFIX/bin/msfvenom ];then
	rm $PREFIX/bin/msfvenom
fi
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/
ln -s $HOME/metasploit-framework/msfvenom /data/data/com.termux/files/usr/bin/
termux-elf-cleaner /data/data/com.termux/files/usr/lib/ruby/gems/2.4.0/gems/pg-0.20.0/lib/pg_ext.so
chmod 777 ~/Sos-Tool/Sos1ska-Tool/Sos1ska-Tool/cont_install.sh
clear
sh ~/Sos1ska-Tool/Sos1ska-Tool/cont_install.sh