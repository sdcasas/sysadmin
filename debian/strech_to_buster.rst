Upgrade to Debian Version 10 Buster
===================================

* Step 1: Update Package Manager and Repositories
By default, Debian 9 refers to the repositories designated for Stretch.

1. First, create a backup copy of the /etc/apt/sources.list file:

    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

2. Then, open the file for editing (we are using GNU nano for text editing):

    sudo nano /etc/apt/sources.list

3. Change all the references in this file from Stretch to Buster. The entries should appear as follows:

    deb http://deb.debian.org/debian debian buster main

    deb http://deb.debian.org/debian buster-updates main

    deb http://deb.debian.org/debian buster/updates main

    # shortcut
    sudo sed -i "s/stretch/buster/g" /etc/apt/sources.list


Debian Version 10 Buster successful install
4. Save the file using the keyboard combination Ctrl+O and Exit by pressing Ctrl+X.

You can also check for FTP download mirrors to replace the web address .



* Step 2: Upgrade from Debian 9 to Debian 10

1. Update the local package lists:

    sudo apt-get update

2. Next, run updates on the software packages to prepare for the operating system upgrade:

    sudo apt-get upgrade

3. Finally, run the distribution upgrade:

    sudo apt-get dist-upgrade

4. Once the process completes, reboot the system to boot into Debian 10 Buster:

    sudo reboot


* Step 3: Verify Debian 10 Update  
You can use the hostnamectl command to display the OS version with the command:

    hostnamectl  


The Operating System field should display Debian GNU/Linux 10 (buster).  

The output should appear as:  

    PRETTY_NAME="Debian GNU/Linux 10 (buster)"
    NAME="Debian GNU/Linux"
    VERSION_ID="10"
    VERSION="10 (buster)"
    ID=debian
    HOME_URL="https://www.debian.org/"
    SUPPORT_URL="https://www.debian.org/support"
    BUG_REPORT_URL="https://bugs.debian.org/"

* (Optional) Step 4: Remove Outdated Packages  
After the upgrade to Debian 10, your system might have outdated packages and dependencies which are no longer necessary.  

To remove outdated packages, run the --purge autoremove command:  

    sudo apt --purge autoremove