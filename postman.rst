


wget -c https://dl.pstmn.io/download/latest/linux64

# decomprimir
unzip file

# create file direct access:
vim /usr/share/applications/Postman.desktop

    [Desktop Entry]
    Encoding=UTF-8
    Name=Postman
    Exec=/opt/Postman/app/Postman %U
    Icon=/opt/Postman/app/resources/app/assets/icon.png
    Terminal=false
    Type=Application
    Categories=Development;