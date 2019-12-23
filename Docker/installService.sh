#!/bin/bash

echo "
[Unit]
Description=Eternal Terminal
After=syslog.target network.target

[Service]
Type=forking
PIDFile=/var/run/etserver.pid
ExecStart=/usr/local/bin/etserver --daemon --cfgfile=/usr/local/etc/et.cfg

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/et.service

echo "
; et.cfg : Config file for Eternal Terminal
;

[Networking]
port = 2022

[Debug]
verbose = 0
silent = 0
logsize = 20971520" > /usr/local/etc/et.cfg

systemctl start et
systemctl enable et
