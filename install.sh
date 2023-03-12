#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit
fi

SCRIPT="$(realpath "$0")"
INSTALL_DIR="$(dirname "$SCRIPT")"
echo "Installing $INSTALL_DIR as systemd service button-notifier.service"
sed "s|INSTALL_DIR|$INSTALL_DIR|" "$INSTALL_DIR/button-notifier.service" > /etc/systemd/system/button-notifier.service
systemctl daemon-reload
systemctl enable button-notifier.service
systemctl start button-notifier.service
