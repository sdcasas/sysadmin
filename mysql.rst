MySQL
------

* clone db
::
    
    mysqldump -u root -p db1 > /tmp/dump.sql
    mysqladmin -u root -p create db2
    mysql -u root -p db2 < /tmp/dump.sql


* acces to mysql server in console

    mysql -h localhost -u usuario -p 

* commands

    # restore db
    use nombreDB;
    source /tmp/dump.sql;

    # list all DATABASES
    show DATABASES;

    # connect to db
    use NameDB;

    # list user
    select user from mysql.user;
    
    # permition all 
    GRANT ALL PRIVILEGES ON *.* TO 'nombre_usuario'@'localhost';
    GRANT ALL PRIVILEGES ON *.* TO 'nombre_usuario'@'%';