#!/bin/bash
clear
echo "Computer says no."
echo
echo "Enumerating I2C bus:"
sudo i2cdetect -y 1
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n &
trap "supervisorctl shutdown && wait" SIGTERM
wait
