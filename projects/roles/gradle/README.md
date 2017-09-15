Role Name
=========

Installation de Gradle.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|gradle_version|3.5|Version de Gradle|
|gradle_archive_name|gradle-3.5-all.zip|Nom de l'archive .zip|
|gradle_download_archive_url|https://services.gradle.org/distributions/gradle-3.5-all.zip|Url de téléchargement de l'archive|
|gradle_install_directory|/opt/gradle|Répertoire d'installation|
|gradle_home|/opt/gradle/gradle-3.5|Adresse absoule du répertoire de la version courante de Gradle|

Dependencies
------------

None.

Example Playbook
----------------

Install gradle

    - hosts: all
      roles:
        - { role: gradle }

License
-------

BSD

Author Information
------------------

Eric LEGBA.