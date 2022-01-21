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

    show DATABASES;
    