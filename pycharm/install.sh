# descargar el programa
wget -c https://download.jetbrains.com/python/pycharm-community-2022.1.3.tar.gz

# descomprimir y poner movar a su ruta
tar -xvf pycharm-community-2022.1.3.tar.gz
mv -v pycharm-community-2022.1.3 /home/scasas/.apps/pycharm/

# enlace simbolico y ejecutable
sudo ln -s /home/scasas/.apps/pycharm/bin/pycharm.sh /usr/bin/pycharm
