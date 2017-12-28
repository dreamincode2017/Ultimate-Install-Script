#!/bin/bash

# Script to install XBT 2.0 on Ubuntu/Linux Mint systems. "xbt-install.sh"
# (GNU/General Public License version 2.0)
# Greeting user:

cat << _EOF_
XBT (2.0) Installation

 Welcome to XBT!

 This installer is for Ubuntu and Linux Mint and it should work with any other
 Ubuntu based Linux distribution as well. It will place the XBT script in
 /usr/local/bin and create a menu entry for the desktop. You can run the
 xbt-un-install.sh script later to remove XBT and its menu entry automatically.

 Please refer to README.md for more information about installation options.

 Thanks for using XBT! Press any key to continue:
_EOF_

read -n 1 -s

copy_check() {

# Checks for errors, alerts user and waits for input to exit.

if [ "$?" != "0" ]; then

   cat << _EOF_
XBT Error: A file did not copy. Please make sure you are running xbt-install.sh
from within the 'XBT-2.0-installation-files' directory. If you are, check the
errors for cp listed above. This installer may not be compatible with your
desktop environment and you will need to install XBT manually.

Please refer to xbt-readme.txt for more information about installation options.

Press any key to exit XBT Installation.
_EOF_

    read -n 1 -s

fi

}

# Copying files:

sudo cp ./xbt /usr/local/bin/
copy_check
sudo cp ./xbt-icon.xpm /usr/share/icons/
copy_check
sudo cp ./xbt.desktop /usr/share/applications/
copy_check

# Saying by-by and exiting script:

echo "XBT is now installed. You may need to log out and log back in"
echo "for the XBT icon to appear in the desktop menu, Enjoy using XBT!"
sleep 5
exit
