#!/bin/bash

# Script to un-install xbt 2.0 on Ubuntu/Linux Mint systems. "xbt-un-install.sh"
# (GNU/General Public License version 2.0)

rm_check() {

# Checks for errors, alerts user and waits for input to exit.

if [ "$?" != "0" ]; then

   cat << _EOF_
XBT Error: A file was not removed or could not be found. This means that XBT
was not installed with the xbt-install.sh script, installed manually into
unexpected directories or was not installed at all.

Please refer to README.md for more information about installation options.

Press any key to exit XBT Un-install.
_EOF_

    read -n 1 -s
    exit
fi

}

# Greet user, wait for input, remove XBT files and exit:

echo $'\n'$"XBT Un-install"
echo $'\n'$"This script will un-install XBT and its menu entry."
echo "Press any key to continue..."
read -n 1 -s
sudo rm /usr/local/bin/xbt
rm_check
sudo rm /usr/share/icons/xbt-icon.xpm
rm_check
sudo rm /usr/share/applications/xbt.desktop
rm_check
echo "XBT is now un-installed. Sorry to see you go..."
sleep 5
exit
