#!/bin/sh

# create folder to file
mkdir /tmp/ftp

# create image
docker build -t sftp .

# create container
docker run --name sftp -v /tmp/ftp:/root/ftp -p 2222:22 -d sftp
