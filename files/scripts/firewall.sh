#!/bin/bash

ufw default deny incoming
ufw default deny outgoing
ufw allow from 8.8.8.8 to 8.8.8.8 port 443 proto tcp

ufw reload