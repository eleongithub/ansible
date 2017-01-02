monit_tomcat
=========

monit_tomcat permet de configurer monit afin de surveiller le serveur d'application Apache Tomcat.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|tomcat_http_port| Oui|8080|8080|Port d'écoute du serveur Apache Tomcat.|
|monit_tomcat_config_file|Oui|/etc/monit/conf.d/tomcat.conf|/etc/monit/conf.d/tomcat.conf|Fichier de configuration du serveur Apache Tomcat à surveiller.|
|tomcat_stop_command|Oui|/etc/init.d/tomcat stop|/usr/sbin/service tomcat stop|La commande pour stopper le serveur Apache Tomcat.|
|tomcat_start_command|Oui|/etc/init.d/tomcat start|/usr/sbin/service tomcat start|La commande pour démarrer le serveur Apache Tomcat.|


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: monit_tomcat }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
