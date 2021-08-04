SYSTEMD
=======

* Description: Starting with Ubuntu 15.04, Upstart will be deprecated in favor of Systemd. With Systemd to manage the services we can do the following (through the systemctl action SERVICE pattern)

* Use

::
    
    # - Use it to start a service. Does not persist after reboot
    systemctl start SERVICE 
    
    # - Use it to stop a service. Does not persist after reboot
    systemctl stop SERVICE 
    
    # - Use it to restart a service
    systemctl restart SERVICE 
    
    # - If the service supports it, it will reload the config files related 
    systemctl reload SERVICE to it without interrupting any process that is using the service.
    
    # - Shows the status of a service. Tells whether a service is currently 
    systemctl status SERVICE running.
    
    # - Turns the service on, on the next reboot or on the next start event. 
    systemctl enable SERVICE It persists after reboot.
    
    # - Turns the service off on the next reboot or on the next stop event. 
    systemctl disable SERVICE It persists after reboot.
    
    # - Check if a service is currently configured to start or not on the next reboot.
    systemctl is-enabled SERVICE
    
    # - Check if a service is currently active.
    systemctl is-active SERVICE  
    
    # - Show all the information about the service.
    systemctl show SERVICE 
    
    # - Completely disable a service by linking it to /dev/null; you cannot start the service manually or enable the service.
    systemctl mask SERVICE 
    
    # - Removes the link to /dev/null and restores the ability to enable and or manually start the service.
    systemctl unmask SERVICE


* check service autostart
::
    # time from start
    systemd-analyze

    # time for process
    systemd-analyze blame
    
    # time for top process
    systemd-analyze blame | head
    
    # disable process in initial
    sudo systemctl disable docker.service
    
    # list service enabled
    systemctl list-unit-files | grep enabled
    
    # example
    sudo systemctl disable mariadb
    sudo systemctl disable rabbitmq-server.service
    sudo systemctl disable keyboard-setup.service
    sudo systemctl disable docker.service
    sudo systemctl disable mysql.service
    sudo systemctl disable containerd.service
    sudo systemctl disable cups-browsed.service
    sudo systemctl disable cups.service
    sudo systemctl disable memcached.service
    sudo systemctl disable docker.socket
    sudo systemctl disable epmd.socket
    sudo systemctl disable apt-daily.timer
    sudo systemctl disable apt-daily-upgrade.timer
    sudo systemctl disable anydesk.service