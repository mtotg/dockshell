#!/bin/bash
#set -e
USR="$1"

if [ "$1" == "" ]; then
	echo "No user supplied."
	exit 1
fi

adduser $USR
chsh -s /bin/dockbash $USR
usermod -aG docker $USR # give them perms to access docker -- for better or worse I guess?
