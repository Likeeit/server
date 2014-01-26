#!/bin/sh

PATH=./:$PATH

echo "Stopping Servers... "
	ps -fu `whoami` | grep -server_sql | grep -v grep | awk '{print $2}' | xargs kill &> /dev/null
echo -n "Starting Servers... "
	screen -amdS login ./login-server_sql
	screen -amdS char ./char-server_sql
	screen -amdS map ./map-server_sql
echo "Servers Started!";
