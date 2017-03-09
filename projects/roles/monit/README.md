monit
=========

monit est un outil open-source de monitoring des services (SSH, PostgreSQL, Apache Tomcat, Apache,etc...) présents sur le serveur qui l'héberge. 
En cas d'indisponibilité d'un service, il peut :
  - déclencher un redémarrage automatique,
  - alerter par mail l'administrateur du système.
Enfin, monit fournit une interface Web sur lequel on peut consulter l'état des services surveillés.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|monit_daemon| Oui|60|60|Monit effectue la vérification des services toutes les 60 secondes.Cette variable indique l'intervalle régulier de temps pour chaque vérification.|
|monit_config_file|Oui|/etc/monit/monitrc|/etc/monit/monitrc|Fichier de configuration.|
|monit_send_alert_mail|Non|False|True|Si `True`, monit envoie un mail d'alerte en cas de panne d'un service. Si `False`, monit n'envoie pas de mail d'alerte à l'administrateur du système.|
|monit_mail_server|Non|-|localhost|Adresse du serveur de mail que monit utilisera pour envoyer les mails d'alerte à l'administrateur du système.|
|monit_mail_address|Non|-|-|Adresse mail à laquelle monit envoyera les mails d'alerte.|
|monit_activate_admin_dashboard|Non|False|True|Si `True`, monit active l'interface d'admin sur lequel on peut suivre les services qui sont surveillés. Si `False`, monit n'active pas l'interface d'admin.|
|monit_admin_dashboard_port|Non|2812|2812|Port d'écoute de l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|monit_admin_login|Non|-|-|Login à saisir pour se connecter à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|monit_admin_password|Non|-|-|Mot de passe à saisir pour se connecter à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|iptables_enabled|Non|False|True|Si `True` et `monit_activate_admin_dashboard`=`True`, une tâche ouvre le port `monit_admin_dashboard_port` via iptables. À renseigner si `monit_activate_admin_dashboard`=`True`.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: monit }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
