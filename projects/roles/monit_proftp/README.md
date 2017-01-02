monit_proftp
=========

monit_proftp permet de configurer monit afin de surveiller le serveur ProFTP.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|monit_proftp_config_file|Oui|/etc/monit/conf.d/proftpd.conf|/etc/monit/conf.d/proftpd.conf|Fichier de configuration du serveur ProFTP à surveiller.|
|apache_stop_command|Oui|/etc/init.d/proftpd stop|/usr/sbin/service proftpd stop|La commande pour stopper le serveur ProFTP.|
|apache_start_command|Oui|/etc/init.d/proftpd start|/usr/sbin/service proftpd start|La commande pour démarrer le serveur ProFTP.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: monit_proftp }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
