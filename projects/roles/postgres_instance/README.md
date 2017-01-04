postgres_instance
=========

postgres_instance est un rôle qui crée des utilisateurs, des bases de données et des schémas de base de données.

Role Variables
--------------
dbs:
  - { db_user: 'apps', db_password: "{{ db_apps_password }}", db_user_roles: 'CREATEROLE CREATEUSER',  db_name: 'apps', db_schema: 'apps' }
  - { db_user: 'apps1', db_password: "{{ db_apps1_password }}", db_user_roles: 'CREATEROLE CREATEUSER',  db_name: 'apps1', db_schema: 'apps1' }
  
| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|dbs| Oui|-|-|Liste des utilisateurs, base de données et schémas à créer sur la BDD.|
|db_apps_password|Oui|-|-|Mot de passe de base de données géré avec ansible-vault (voir fichiers password-{{env}}.yml).|
|db_apps1_password|Oui|-|-|Mot de passe de base de données géré avec ansible-vault (voir fichiers password-{{env}}.yml).|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: postgres_instance }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.