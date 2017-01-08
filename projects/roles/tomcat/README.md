tomcat
=========

Installation du serveur d'application Apache Tomcat. Ce rôle vérifie s'occupe de l'installation basique d'Apache Tomcat.
Il vérifie si la version qui doit être installée existe déjà sur le serveur. Si non, Ansible : 
- installe les packages pré-requis
- télécharge Apache Tomcat sur un serveur Nexus privé et le dézippe dans un répertoire.

Requirements
------------


Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|tomcat_required_packages| Oui|-|-|Liste des packages pré-requis pour l'installation d'Apache Tomcat.|
|tomcat_http_port| Oui|8080|8080|Port d'écoute du serveur Apache Tomcat.|
|tomcat_version| Oui|8.0.32|8.0.32|Version du serveur Apache Tomcat installé.|
|tomcat_tarball_name|Oui|apache-tomcat-8.0.32.tar.gz|apache-tomcat-8.0.32.tar.gz|Nom de l'archive du serveur Apache Tomcat.|
|tomcat_url|Oui|-|-|URL pour télécharger sur un repository Nexus l'archive du serveur Apache Tomcat.|
|tomcat_versions|Oui|-|-|Répertoire d'installation de toutes les versions d'Apache Tomcat.|
|tomcat_last_version|Oui|-|-|Répertoire d'installation de la dernière d'Apache Tomcat.|
|tomcat_home|Oui|-|-|Lien qui pointe sur le répertoire d'installation de la dernière d'Apache Tomcat.|
|libtcnative_version|Oui|-|-|Version du module Apache Tomcat Native.|
|tomcat_native_url|Oui|-|-|URL de téléchargement d'Apache Tomcat Native sur un repository Nexus privé.|
|libtcnative_util_tarball_name|Oui|-|-|Nom du fichier archive du module libtcnative_util_home.|
|libtcnative_util_home|Oui|-|-|Répertoire d'installation du module Apache Tomcat Native.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: tomcat }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.