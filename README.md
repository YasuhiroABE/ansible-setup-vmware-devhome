Abstract
========

This project contains the ansible project explained at the following article,
    https://qiita.com/YasuhiroABE/items/9ebcda4cd8503df9ad81

It set up a VM of vmware workstation pro with the specific virtual network editor settings. Please refer the diagram at the above article.

Getting Started
---------------

    ## setup the ansible environment
    $ make setup-venv
    $ make stup-ansible
    $ make setup-role

    ## Update the files of files/ and playbook/ directories based on your environment.

    ## If everything is ok, then execute the ansible playbook by the makefile task.
    $ make

