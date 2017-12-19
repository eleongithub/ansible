apache_conf
=========

apache_conf makes configurations on the Apache server : 
  - right of the directories (owner, group)
  - deploy configuration files
  - enable service to start/stop/reload/restart Apache Server.

Requirements
------------

None.

Role Variables
--------------
 
| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|apache_conf_http_default_port|80|HTTP Port|
|apache_conf_https_default_port|443|HTTPS Port|
|apache_conf_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_conf_logs_dir|/var/log/apache2|Directory containing Apache's log files|
|apache_conf_dir|/opt/apache2/conf|Directory containing Apache's configuration files|
|apache_conf_modules_file|/opt/apache2/conf/modules.conf|List of the modules|
|apache_conf_httpd_file|/opt/apache2/conf/httpd.conf|HTTPD configuration file|
|apache_conf_init_script|/etc/init.d/apache|Script to control Apache server (start/stop/restart/reload)|
|apache_conf_root_user|root|Owner of the Apache's directories|
|apache_conf_root_group|sys|Owner's group|
|apache_conf_user|wwwd|Dedicated user to run the httpd daemon|
|apache_conf_user_group|wwwd|Dedicated user's group|
|apache_conf_files|-|List of configuration's files which will be deployed|
|apache_conf_log_level|warn|Log levels|
|apache_conf_max_clients|300|Maximum client|
|apache_conf_keep_alive|On|Keep alive configuration|
|apache_conf_max_keep_alive_requests|150|Max keep alive requests|
|apache_conf_keep_alive_timeout|15|Keep alive timeout|
|apache_conf_goss_enabled|False|Enable(True)/Disable(False) [Goss](https://github.com/aelsabbahy/goss) checking after execution of playbook.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/apache_conf/defaults/main.yml)

Dependencies
------------

- apache

Example Playbook
----------------

Install apache_conf
```yaml
- hosts: all
  roles:
    - { role: apache_conf }
```

License
-------

BSD

Author Information
------------------
Eric LEGBA.
