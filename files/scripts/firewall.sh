#!/bin/bash

ufw allow from 155.207.1.94 to any port 443 proto tcp
ufw allow from any to 155.207.1.94 port 443 proto tcp
ufw allow to 127.0.0.1/24
ufw allow from 127.0.0.1/24
ufw allow out to 127.0.0.1/24
ufw allow out from 127.0.0.1/24
ufw allow ssh


ufw default deny incoming
ufw default deny outgoing


ufw reload
