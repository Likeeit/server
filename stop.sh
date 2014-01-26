#!/bin/sh

echo -n "Stopping Servers... "
	ps -fu `whoami` | grep -server_sql | grep -v grep | awk '{print $2}' | xargs kill &> /dev/null
echo "Servers Stopped";
