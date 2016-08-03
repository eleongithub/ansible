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
|banner_information|Linux SSH Server|SSH Banner information.|
|tmout|900|UDP Monitoring mode (udp, sudp,audp).|
|histsize|20|Porsentry configuration file.|
|histfilesize|20|Bash programs which send alerting mails to the admin.|
|motd_file|/etc/motd|Ignore IP address list.|
|banner_file|/etc/ssh/ssh_banner|Ignore IP address list.|
|profile_file|/etc/profile|Ignore IP address list.|
|sshd_config_port|22|Ignore IP address list.|
|sshd_config_file|/etc/ssh/sshd_config|Ignore IP address list.|
|network_interface|eth0|Ignore IP address list.|
|iptables_enabled|False|Ignore IP address list.|
|sshd_config|list|Admin address mail.|
|backup_files|list|Admin address mail.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/ssh/defaults/main.yml)

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