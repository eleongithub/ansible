ssh
=========

Install & configure ssh.

Requirements
------------

None.

Role Variables
--------------

ssh_banner_information : "Linux SSH Server"
ssh_tmout: 900
ssh_histsize: 20
ssh_histfilesize: 20
ssh_motd_file: /etc/motd
ssh_banner_file: /etc/ssh/ssh_banner
ssh_profile_file: /etc/profile
ssh_config_port: 22
ssh_config_file: /etc/ssh/sshd_config
ssh_network_interface: "eth0"
ssh_iptables_enabled: False
ssh_goss_enabled: False
ssh_config : 
    - { regexp: '^Port', value: 'Port {{ ssh_config_port }}' }
    - { regexp: '^Protocol', value: 'Protocol {{ ssh_config_protocol }}' }
    - { regexp: '^PermitRootLogin', value: 'PermitRootLogin no' }
    - { regexp: '^PasswordAuthentication', value: 'PasswordAuthentication no' }
ssh_backup_files:
 - { "/etc/issue" }
 - { "/etc/issue.net" }
 - {"{{ ssh_motd_file }}" }
 - { "{{ ssh_profile_file }}" }

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