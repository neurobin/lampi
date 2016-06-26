#!/bin/bash
#check for root
if [ $EUID -ne 0 ]; then
    printf "\n\tRoot privilege required\n"
    printf "\tSorry! Exiting\n\n"
    exit 1
fi
cd "$(dirname "$BASH_SOURCE")" &&
chmod 755 ./lampi &&
cp ./lampi /usr/local/bin &&
echo Success ||
echo "E: Failed to install"
