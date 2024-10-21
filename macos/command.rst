networing
=========


```bash
    # list all interface
    sudo networksetup -listallnetworkservices

    # setup dns value
    sudo networksetup -setdnsservers Wi-Fi 208.67.222.222
    
    # You can also set multiple DNS servers at the same time (assume Primary and Secondary):
    sudo networksetup -setdnsservers Wi-Fi 208.67.222.222 8.8.8.8

    # removing the values you just set 
    sudo networksetup -setdnsservers Wi-Fi

    # Verify DNS values
    networksetup -getdnsservers Wi-Fi

    # change hostname
    sudo scutil --set HostName valhalla
```