monit-apache
=========

monit-apache permet de configurer monit afin de surveiller le serveur Web Apache.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|apache_pid_file| Oui|/var/run/httpd.pid|/opt/apache2/logs/httpd.pid|Fichier PID contenant l'ID du processus httpd.|
|monit_apache_config_file|Oui|/etc/monit/conf.d/apache.conf|/etc/monit/conf.d/apache.conf|Fichier de configuration du serveur Web Apache à surveiller.|
|apache_stop_command|Oui|/etc/init.d/apache2 stop|/usr/sbin/service apache stop|La commande pour stopper le serveur Web Apache.|
|apache_start_command|Oui|/etc/init.d/apache2 start|/usr/sbin/service apache start|La commande pour démarrer le serveur Web Apache.|


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: monit-apache }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
