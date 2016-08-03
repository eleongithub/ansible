postgres_instance
=========

postgres_instance adds users, databases and schemas to PostgreSQL.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|dbs|-|List of users, databases and schemas.|
|db_apps_password|-|Database password stored by ansible-vault (Look at password-{{env}}.yml).|
|db_apps1_password|-|Database password stored by ansible-vault (Look at password-{{env}}.yml).|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/postgres_instance/defaults/main.yml)


Dependencies
------------

None.

Example Playbook
----------------

Install postgres_instance
```yaml
- hosts: servers
  roles:
    - { role: postgres_instance }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.