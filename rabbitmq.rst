Rabbitmq
--------

* docker install
::

    # download image
    docker pull rabbitmq

    # running
    docker run -d --hostname myrabbit --name myrabbit rabbitmq

    # if need monitoring
    docker run -it -d --name myrabbit -p 5672:5672 -p 15672:15672 rabbitmq:3-management

    # before, to do change credential for admim user

    # for monitor logs, myrabbit is container name
    docker logs -f myrabbit

    # for access container and config with (rabbitmqctl)
    docker exec -it myrabbit bash 

* acces for web
::

    # admin
    http://localhost:15672


* rabbitmqctl
::

    # doc in https://www.rabbitmq.com/rabbitmqctl.8.html

    # status
    rabbitmqctl status
    
    # add user admin
    rabbitmqctl add_user <username> <password>
    rabbitmqctl set_user_tags <username> administrator
    rabbitmqctl set_permissions -p <vhost> <username> ".*" ".*" ".*"

    # add vhost 
    rabbitmqctl add_vhost <name_vhost>

    # list queues
    rabbitmqctl list_queues

    # list virtual host
    rabbitmqctl list_vhosts
