#!/usr/bin/bash

mkdir /data/data/com.termux/files/Sos1ska
cp -r ~/Sos1ska-Tool.zip /data/data/com.termux/files/Sos1ska

unzip /data/data/com.termux/files/Sos1ska/Sos1ska-Tool.zip

rm -rf ~/Sos1ska-Tool.zip

mkdir ~/.number
mkdir ~/.ipsystem
mkdir ~/.spider3.0
mkdir ~/.spider2.0
mkdir ~/.spider1.0
mkdir ~/.commands

unzip /data/data/com.termux/files/Sos1ska/Sos1ska-Tool.zip
rm -rf /data/data/com.termux/files/Sos1ska/Sos1ska-Tool.zip
rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/motd

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/ci/bash.bashrc /data/data/com.termux/files/usr/etc
cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/ci/motd /data/data/com.termux/files/usr/etc

clear

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/command/delete.py ~/.commands
cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/command/help.sh ~/.commands
chmod -R 777 ~/.commands

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/IP-System/Sos-BreakingIP/Termux/BreakIP.py ~/.ipsystem
chmod -R 777 ~/.ipsystem

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Sms-BombRu2.0/Sos-BombRu2.0/Unix/Sms-BomberSos2.1.py
chmod 777 ~/Sms-BomberSos2.1.py

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Sms-BombRu2.0/Sos-BombRu2.0/Unix/services.py
chmod 777 ~/services.py

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Spider-Breaking/Breaking3.0/Unix/spider-new.py ~/.spider3.0
chmod -R 777 ~/.spider3.0

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Number-System/Sos-Break/Termux/Breaking2.0.py ~/.number
chmod -R 777 ~/.number

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Spider-Breaking1.0/Spider-Breaking/Spider-Breaking.py ~/.spider1.0
cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Spider-Breaking1.0/Spider-Breaking/collector.txt ~/.spider1.0
chmod -R 777 ~/.spider1.0

cp /data/data/com.termux/files/Sos1ska/Sos1ska-Tool/Sos1ska-Tool/tools/Spider-Breaking2.0/Spider-Breaking/Unix/break.py ~/.spider2.0
chmod -R 777 ~/.spider2.0

cp ~/.number/Breaking2.0.py $PREFIX/bin/number
dos2unix $PREFIX/bin/number

cp ~/.ipsystem/BreakIP.py $PREFIX/bin/ipsystem
dos2unix $PREFIX/bin/ipsystem

cp ~/.spider3.0/spider-new.py $PREFIX/bin/spider3.0
dos2unix $PREFIX/bin/spider3.0

cp ~/.spider2.0/break.py $PREFIX/bin/spider2.0
dos2unix $PREFIX/bin/spider2.0

cp ~/.spider1.0/Spider-Breaking.py $PREFIX/bin/spider1.0
dos2unix $PREFIX/bin/spider1.0

cp ~/.commands/delete.py $PREFIX/bin/delete
cp ~/.commands/delete.py $PREFIX/bin/del
dos2unix $PREFIX/bin/delete
dos2unix $PREFIX/bin/del

cp ~/.commands/help.sh $PREFIX/bin/Sos-help
dos2unix $PREFIX/bin/Sos-help

clear
echo 'Не бойтесь, Termux сейчас выключится, вам потребуется снова в него зайти'
sleep 5
