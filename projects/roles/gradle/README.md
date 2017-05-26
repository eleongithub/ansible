Role Name
=========

Gradle.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|gradle_version|3.0|gradle version.|
|gradle_archive_name|gradle-3.0-all.zip|Gradle archive name.|
|gradle_download_archive_url|| URL where download archive name.|
|gradle_install_directory|/opt/gradle|Gradle installation directory.|
|gradle_home|/opt/gradle/gradle-3.0|Gradle home directory.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/gradle/defaults/main.yml)

Dependencies
------------

None.

Example Playbook
----------------

Install gradle
```yaml
- hosts: all
  roles:
    - { role: gradle }

License
-------

BSD

Author Information
------------------

Eric LEGBA.