Role Name
=========

Maven.

Requirements
------------

None.

Role Variables
--------------
| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|maven_version|3.3.9|Maven version.|
|maven_archive_name|maven-3.3.9-bin.tar.gz|Maven archive name.|
|maven_download_archive_url|| URL where download archive name.|
|maven_install_directory|/opt/maven|Maven installation directory.|
|maven_home|/opt/maven/apache-maven-3.3.9|Maven home directory.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/maven/defaults/main.yml)

Dependencies
------------

None.

Example Playbook
----------------

Install maven
```yaml
- hosts: all
  roles:
    - { role: maven }

License
-------

BSD

Author Information
------------------

Eric LEGBA.