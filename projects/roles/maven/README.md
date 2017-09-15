Role Name
=========

Installation de Maven.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|maven_version|3.5.0|Version de maven à installer|
|maven_archive_name|maven-3.5.0-bin.tar.gz|Fichier .tar.gz  de maven|
|maven_download_archive_url|-| URL de téléchargement de maven|
|maven_install_directory|/opt/maven|Répertoire contenant  les versions de maven|
|maven_home|/opt/maven/apache-maven-3.3.9|Chemin absolu de maven|
|maven_home|-|Credentials de connexion ajoutés au fichiers settings.xml|

Dependencies
------------

None.

Example Playbook
----------------

Install maven

    - hosts: servers
      roles:
         - { role: maven }

License
-------

BSD

Author Information
------------------

Eric LEGBA.