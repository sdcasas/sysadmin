SSH
===

* generate ssh rsa
::

    ssh-keygen -t ed25519 -C "sergio.casas@invgate" 


* Adding your SSH key to the ssh-agent  
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent
::

    eval "$(ssh-agent -s)"

    ssh-add ~/.ssh/id_ed25519
