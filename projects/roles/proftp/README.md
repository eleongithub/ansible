proftp
=========

Installation of ProFTP server.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|proftp_version|1.3.5|ProFTP version.|
|proftp_user|proftpd|ProFTP User.|
|proftp_user_group|proftpd|ProFTP User group.|
|proftp_server_name|"Syscom FTP Server"|ProFTP Server name.|
|proftp_type_conf|standalone|Configuration te get standalone ProFTP.|
|proftp_transfert_log_file|/var/log/proftpd/xferlog|Transfert Log absolute path.|
|proftp_system_log_file|/var/log/proftpd/proftpd.log|System Log absolute path.|
|proftp_conf_path|/etc/proftpd/proftpd.conf|ProFTP main configuration file.|
|proftp_modules_conf_path|/etc/proftpd/modules.conf|ProFTP module configuration file.|
|proftp_goss_enabled|False|Enable/Disable goss checking after installation.|
|proftp_default_port|21|ProFTP default port.|
|proftp_firwall_ftp_min_passive_port|5000|ProFTP minimum passive port.|
|proftp_firwall_ftp_max_passive_port|5100|ProFTP maximum passive port.|
|proftp_iptables_enabled|False|Enable/Disable iptables rule.|
|proftp_network_interface|eth0|Network interface where iptables rule will be applied.|
|proftp_config_directive|List|List of configurations for ProFTP.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/proftp/defaults/main.yml)

Dependencies
------------

None.

Example Playbook
----------------

Install proftp
```yaml
- hosts: all
  roles:
    - { role: proftp }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.
