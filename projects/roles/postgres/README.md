postgres
=========

postgres est un rôle qui installe le serveur de base de données PostgreSQL et gère des configurations via les fichiers pg_hba.conf et postgresql.conf.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|postgres_version| Oui|-|9.4|Version de PostgreSQL à installer.|
|postgres_listen_addresses|Oui|-|*|Liste des adresses IP qui peuvent interroger la base de données.|
|postgres_server_pkg|Oui|-|postgresql-9.4|Nom du package du serveur PostgreSQL.|
|postgres_client_pkg|Oui|-|postgresql-client-9.4|Nom du package du client PSQL.|
|postgres_conf_files|Oui|-|postgresql.conf & pg_hba.conf|Liste des fichiers de configurations à déployer.|
|postgres_port|Oui|-|5432|Port d'écoute de la base de données.|
|iptables_enabled|Non|False|True|Si `True`, une tâche ouvre le port `postgres_port` via iptables.|
|network_interface|Oui|eth0|eth0|Interface réseau sur lequel les règles Iptables seront appliquées.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: postgres }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.