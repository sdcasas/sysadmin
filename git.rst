GIT
===

* for not monitor change in permision

    git config core.filemode false

* do not request user and password 

    # git save the user and password 
    git config --global credential.helper store

    # optional: save credentials in cache 
    git config --global credential.helper cache

    # optional: you can save for a limeted time
    git config --global credential.helper 'cache --timeout=600'


