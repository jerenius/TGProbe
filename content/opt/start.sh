#!/bin/bash

clear
echo "Computer says no."
echo 
echo "Enumerating I2C bus:"

sudo i2cdetect -y 1

lighty-enable-mod fastcgi 
lighty-enable-mod fastcgi-php

service lighttpd force-reload



export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

