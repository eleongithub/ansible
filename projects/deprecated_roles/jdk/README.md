jdk
=========

Installation du Java Development Kit (JDK).

Requirements
------------

None.

Role Variables
--------------

| Nom           | Default Value  | Description|
| ------------- |:-------------:|-----------:|
|jdk_java_version|1.8.0_131|Version du jdk à installer.|
|jdk_versions|/opt/jdk_versions|Répertoire contenant  les JDKs|
|jdk_java_home|/opt/jdk_versions/jdk1.8.0_131|Chemin absolu du répertoire où sera installé le JDK 1.8.0_141.|
|jdk_tarball_name_32|jdk-8u131-linux-i586.tar.gz|Archive .tar.gz pour les machines 32 bits.|
|jdk_tarball_name_64|jdk-8u131-linux-x64.tar.gz|Archive .tar.gz pour les machines 64 bits.|
|jdk_32_url|-|URL de téléchargement du JDK pour une machine 32 bits.|
|jdk_64_url|-|URL de téléchargement du JDK pour une machine 64 bits.|


Dependencies
------------

None.

Example Playbook
----------------

- hosts: servers
  roles:
     - { role: jdk }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.