monit-postgresql
=========

monit-postgresql permet de configurer monit afin de surveiller la base de données postgresql.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

[coles="5*", options="header"]
|===
| Nom | Obligatoire | Valeur par défaut | Choix | Description

| postgres_port
| Oui
| 5432
| -
| Port d'écoute du serveur PostgresSQL.

| monit_postgres_config_file
| Oui
| /etc/monit/conf.d/postgresql.conf
| -
| Fichier de configuration que monit utilisera pour surveiller le serveur PostgresSQL.

| postgres_stop_command
| Oui
| /usr/sbin/service postgresql stop
| -
| La commande que monit utilisera pour stopper le serveur PostgresSQL.

| postgres_start_command
| Oui
| /usr/sbin/service postgresql stop
| -
| La commande que monit utilisera pour démarrer le serveur PostgresSQL.
|===

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
