tomcar_owasp
=========

Ce rôle applique les recommandations OWASP au serveur Apache Tomcat.
Pour plus d'informations concernant les recommandations OWASP, consulter https://www.owasp.org/index.php/Securing_tomcat.


Requirements
------------


Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|tomcat_user|Oui|tomcat|tomcat|Utilisateur dédié au fonctionnement du serveur Apache Tomcat.|
|tomcat_user_group|Oui|tomcat|tomcat|Groupe de l'utilisateur dédié au fonctionnement du serveur Apache Tomcat.|
|tomcat_remove_files|Oui|-|-|Liste de fichiers/répertoires à supprimer.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: tomcat_owasp }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.