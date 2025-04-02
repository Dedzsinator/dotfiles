#!/bin/bash

# Check the status of the mssql-server service
if systemctl is-active --quiet mssql-server.service; then
    # If it is running, stop it
    sudo systemctl stop mssql-server.service
    notify-send "MSSQL Server stopped."
else
    # If it is not running, start it
    sudo systemctl start mssql-server.service
    notify-send "MSSQL Server started."
fi
