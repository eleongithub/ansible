ssh
=========

Install & configure ssh.

Requirements
------------

None.

Role Variables
--------------

| Nom	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|ssh_banner_information|Linux SSH Server|SSH Banner information.|
|ssh_tmout|900|After 900 seconds of inactivity, the ssh connexion is disabled|
|ssh_histsize|20|.|
|ssh_histfilesize|20|.|
|ssh_motd_file|/etc/motd|The Message Of The Day.|
|ssh_banner_file|/etc/ssh/ssh_banner|SSH Banner.|
|ssh_profile_file|/etc/profile|Profile file address.|
|ssh_config_port|22|SSH TCP port.|
|ssh_config_file|/etc/ssh/sshd_config|SSH Config file.|
|ssh_network_interface|eth0|Network interfaces.|
|ssh_iptables_enabled|False|Enable/Disable iptables rules for SSH on port 22.|
|ssh_goss_enabled|False|Enable/Disable Goss test after installation.|
|ssh_config|list|List of configuration directives for SSH.|
|ssh_backup_files|list|List of files that will be backuped.|


Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: ssh }

License
-------

BSD

Author Information
------------------

Eric LEGBA.