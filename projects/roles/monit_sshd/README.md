monit_sshd
=========

monit_sshd permet de configurer monit afin de surveiller le serveur SSH.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisé	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|monit_sshd_config_file|Oui|/etc/monit/conf.d/sshd.conf|/etc/monit/conf.d/sshd.conf|Fichier de configuration du serveur SSH à surveiller.|
|sshd_stop_command|Oui|/etc/init.d/sshd stop|/usr/sbin/service sshd stop|La commande pour stopper le serveur SSH.|
|sshd_start_command|Oui|/etc/init.d/sshd start|/usr/sbin/service sshd start|La commande pour démarrer le serveur SSH.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: monit_sshd }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
