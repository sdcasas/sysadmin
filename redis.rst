Redis
------

* docker
::

    # download image
    docker pull redis

    # run (alternative)
    docker run --name my-redis -d redis
    docker run --name my-redis -p 6379:6379 -d redis
    docker run --name my-redis -v /myredis/redis.conf:/usr/local/etc/redis/redis.conf -d redis

    # access to container
    docker exec -it my-redis sh
