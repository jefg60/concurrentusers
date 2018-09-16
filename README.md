Role Name
=========

Sets up some ansible optimisations for servers already controlled by ansible. Shouldn't be needed if you have used my powershell scripts to configure windows nodes for ansible orchestration!

(TODO: update powershell-scripts repo to make the above statement true)

Essentially, updates MaxConcurrentUsers value for the windows winrs configuration to prevent ansible errors.

Requirements
------------

A working ansible winrm connection on the target windows node. For instance perhaps you have groups of servers that all use a different ansible user and you want to standardise this.

Role Variables
--------------

tempdir: directory for temporary script files
ansible_user: local windows admin user to create for ansible orchestration purposes
old_ansible_users: list of other local user accounts to remove
TODO: add this and make it create the user and remove any old ones if succesful

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: windows-servers
      roles:
         - { role: jef60.ansible-orchestration-win, ansible_user: ansibleuser }

License
-------

GPLv3

Author Information
------------------

Jeff Hibberd
