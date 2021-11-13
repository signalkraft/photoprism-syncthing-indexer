#!/bin/ash

ST_URL="https://$(ip route show | awk '/default/ {print $3}'):8384/rest/events"

ST_URL=$ST_URL syncthing-hooks