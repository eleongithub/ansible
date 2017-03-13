monit_apache
=========

monit_apache adds configuration to monit Apache web server.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_logs_dir|/opt/apache2/logs|Apache's logs directory|
|apache_pid_file|/opt/apache2/logs/httpd.pid|Apache's PID file|
|apache_stop_command|/usr/sbin/service apache stop|Stop command|
|apache_start_command|/usr/sbin/service apache start|Start command|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/monit_apache/defaults/main.yml)

Dependencies
------------

- monit

Example Playbook
----------------
Install monit_apache
```yaml
- hosts: all
  roles:
    - { role: monit_apache }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.