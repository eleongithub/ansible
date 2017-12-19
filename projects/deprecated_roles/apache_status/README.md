apache_status
=========

apache_status adds status module and its configurations to Apache server.

Requirements
------------

None.

Role Variables
--------------
 
| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|http_default_port|80|HTTP Port|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_logs_dir|/opt/apache2/logs|Directory containing Apache's log files|
|apache_conf_dir|/opt/apache2/conf|Directory containing Apache's configuration files|
|apache_modules_dir|/opt/apache2/modules|Apache's modules directory|
|apache_modules_file|/opt/apache2/conf/modules.conf|List of the modules|
|apache_httpd_file|/opt/apache2/conf/httpd.conf|HTTPD configuration file|
|apache_init_script|/etc/init.d/apache|Script to control Apache server (start/stop/restart/reload)|
|mod_status_require_ip|''|Restricted IP Address which are allowed to connect to Apache status interface|
|mod_status_require_host|''|Restricted hosts which are allowed to connect to Apache status interface|
|apache_vhosts_dir|/opt/apache2/vhosts|Apache's virtual hosts directory|
|mod_status_url|http://xx.xx.xx.xx....|Url to download the mod status library (Repo Nexus).|
|mod_status_server_name|status.fr|HTTP Address to get mod status interface|
|mod_status_server_alias|www.status.fr|HTTP Address to get mod status interface|
|mod_status_enable_authentication|True|Enable authentication popup (Login & Password) before access to mod status interface|
|apache_server_admin|root@localhost|Apache administrator mail.|


More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/apache_status/defaults/main.yml)

Dependencies
------------

- apache

Example Playbook
----------------

Install apache_conf
```yaml
- hosts: all
  roles:
    - { role: apache_status }
```

License
-------

BSD

Author Information
------------------
Eric LEGBA.