GIT
===

* initial config
    ```bash
    git config --global user.name "Sergio Casas"
    git config --global user.email sdcasas@gmail.com

    # for windows, not use user and password
    # for generate token https://github.com/settings/tokens
    git config --global user.password ghp_4gBLABLABLABLA_Obtener_toker_desde_github
    ```


* do not request user and password 

    ```bash
    # git save the user and password 
    git config --global credential.helper store

    # optional: save credentials in cache 
    git config --global credential.helper cache

    # optional: you can save for a limeted time
    git config --global credential.helper 'cache --timeout=600'
    ```


* for not monitor change in permision
    ```bash
        git config core.filemode false
    ```

* delete branch remote
    ```bash
        git push origin --delete
    ```

* add other key-ssh

    ```bash
        eval "$(ssh-agent -s)
        ssh-add ~/.ssh/id_sdcasas
    ```

* create local branch from remote branch

    ```bash
        git fetch <remote> <remote_branch>:<local_branch>
        git fetch origin release_ugf2:release_ugf2
        git checkout release_ugf2
    ```

* alternative a git stash

    ```bash
        # initial from initial-branch
        git add file1 file2 fileN
        git commit -m "DELETE COMMIT"

        # change to branch other-branch
        git checkout other-branch

        # return branch initial
        git checkout initial-branch
        
        # delete last commit
        git reset HEAD~
    ```

* add file to last commit
    ```bash
        git add the_left_out_file
        git commit --amend --no-edit
    ```


* Error 
    ```bash
        # git fatal: Not possible to fast-forward, aborting.
        git pull --no-ff origin master
    ```
