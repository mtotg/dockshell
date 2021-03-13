#!/bin/bash
set -e
TAGVAL="$1"
if [ "$TAGVAL" == "" ]; then
	read -p "Tag version number: " TAGVAL
fi
docker build . --tag coreubuntu1804:$TAGVAL
