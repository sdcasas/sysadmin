GIT
===

* for not monitor change in permision


    git config core.filemode false

* do not request user and password 

    ```bash
        # git save the user and password 
        git config --global credential.helper store

        # optional: save credentials in cache 
        git config --global credential.helper cache

        # optional: you can save for a limeted time
        git config --global credential.helper 'cache --timeout=600'
    ```

* delete branch remote

    git push origin --delete


* add other key-ssh

    eval "$(ssh-agent -s)
    ssh-add ~/.ssh/id_sdcasas  

* create local branch from remote branch

    git fetch <remote> <remote_branch>:<local_branch>
    git fetch origin release_ugf2:release_ugf2
    git checkout release_ugf2

* alternative a git stash

    # initial from initial-branch
    git add file1 file2 fileN
    git commit -m "DELETE COMMIT"
    # change to branch other-branch
    git checkout other-branch

    # return branch initial
    git checkout initial-branch
    # delete last commit
    git reset HEAD~