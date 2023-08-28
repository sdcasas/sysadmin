Grub Rescue
============



* Boot System

    grub reccue> ls # query his partitions
    grub reccue> ls (hdX,gptX)
    grub reccue> set root=(hdX,gptX)
    grub reccue> set prefix=(hdX,gptX)/boot/grub
    grub reccue> insmod normal
    grub reccue> normal


* Repair grub

    grub-install /dev/<SDX> # your disc
    update-grub 