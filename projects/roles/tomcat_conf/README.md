tomcat_conf
=========

Ce rôle s'occupe de la configuration de Tomcat.

Requirements
------------


Role Variables
--------------
 
| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|tomcat_http_port| Oui|8080|8080|Port HTTP Apache Tomcat.|
|tomcat_https_port| Oui|8443|8443|Port d'écoute HTTPS Apache Tomcat.|
|tomcat_mod_jk_port| Oui|8009|8009|Port Mod JK.|
|tomcat_shutdown_port| Oui|8005|8005|Port d'écoute sur lequel Apache Tomcat reçoit un ordre d'arrêt.|
|tomcat_shutdown_command| Oui|-|-|Commande d'arrêt envoyé sur le port `tomcat_shutdown_port`.|
|tomcat_init_script|Oui|/etc/init.d/tomcat|/etc/init.d/tomcat|Script Shell pour contrôler (start|stop|status) le serveur Apache Tomcat.|
|tomcat_user|Oui|tomcat|tomcat|Utilisateur dédié à Apache Tomcat.|
|tomcat_user_group|Oui|tomcat|tomcat|Groupe de l'utilisateur dédié à Apache Tomcat.|
|tomcat_conf_directory|Oui|-|-|Répertoire contenant les fichiers de configuration d'Apache Tomcat.|
|tomcat_conf_files|Oui|-|-|Liste de fichiers de configuration d'Apache Tomcat.|

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: tomcat_conf }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.