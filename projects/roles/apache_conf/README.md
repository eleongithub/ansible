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

root_user: root
root_group: sys
apache_user: wwwd
apache_user_group: wwwd
apache_conf_log_level: warn
apache_conf_max_clients: 300
apache_conf_keep_alive: 'On'
apache_conf_max_keep_alive_requests: 500
apache_conf_keep_alive_timeout: 15
apache_conf_files:
 - { src: 'httpd.conf.j2', dest: '{{ apache_httpd_file }}' }
 - { src: 'modules.conf.j2', dest: '{{ apache_modules_file }}' }
 
 | Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|http_default_port|80|HTTP Port|
|https_default_port|443|HTTPS Port|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_logs_dir|/opt/apache2/logs|Directory containing Apache's log files|
|apache_conf_dir|/opt/apache2/conf|Directory containing Apache's configuration files|
|apache_modules_file|/opt/apache2/conf/modules.conf|List of the modules|
|apache_httpd_file|/opt/apache2/conf/httpd.conf|HTTPD configuration file|
|apache_init_script|/etc/init.d/apache|Script to control Apache server (start/stop/restart/reload)|
|root_user|root|Owner of the Apache's directories|
|root_group|sys|Owner's group|
|apache_user|wwwd|Dedicated user to run the httpd daemon|
|apache_user_group|wwwd|Dedicated user's group|
|apache_conf_files|-|List of configuration's files which will be deployed|
|apache_conf_log_level|warn|Log levels|
|apache_conf_max_clients|300|Maximum client|
|apache_conf_keep_alive|On|Keep alive configuration|
|apache_conf_max_keep_alive_requests|150|Max keep alive requests|
|apache_conf_keep_alive_timeout|15|Keep alive timeout|

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
