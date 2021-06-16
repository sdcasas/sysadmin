Rabbitmq
--------

* docker install
::

    # download image
    docker pull rabbitmq

    # running
    docker run -d --hostname my-rabbit --name my-rabbit rabbitmq


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

    # rabbitmqctl add_vhost <name_vhost>

    # list queues
    rabbitmqctl list_queues

    # list virtual host
    rabbitmqctl list_vhosts
