monit
=========

monit est un outil open-source de monitoring des services (SSH,PostgresSQL,Tomcat,Apache,etc...) présents sur le service qui l'héberge. 
En cas d'indisponibilité d'un service, il peut :
  - déclencher un redémarrage automatique,
  - alerter par mail l'administrateur du système.
Enfin, monit fournit une interface Web sur lequel on peut consulter l'état des services surveillés.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.


| Nom	        | Obligatoire	| Valeur par défaut  | Choix	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
| monit_daemon  | Oui		| 60		     |-		|Monit effectuera la vérification des services toutes les 60 secondes.Cette variable indique l'intervalle régulier de vérification.|
|monit_config_file_os_family_debian|Oui		     |/etc/monit/monitrc|-	|Fichier de configuration sur les systèmes de la famille 'Debian'.|

[coles="5*", options="header"]
|===
| Nom | Obligatoire | Valeur par défaut | Choix | Description

| monit_daemon
| Oui
| 60
| -
| Monit effectuera la vérification des services toutes les 60 secondes.
Cette variable indique l'intervalle régulier de vérification.

| monit_config_file_os_family_debian
| Oui
| /etc/monit/monitrc
| -
| Fichier de configuration sur les systèmes de la famille 'Debian'.

| monit_config_file_os_family_redhat
| Oui
| /etc/monit.conf
| -
| Fichier de configuration sur les systèmes de la famille 'RedHat'.

| monit_send_alert_mail
| Non
| False
| True or False
| Si `True`, monit va envoyer un mail d'alerte en cas de panne d'un service.
Si `False`, monit n'envoyera pas de mail d'alerte à l'administrateur du système.

| monit_mail_server
| Non
| -
| -
| Adresse du serveur de mail que monit utilisera pour envoyer les mails d'alerte à l'administrateur du système.

| monit_mail_address
| Non
| -
| -
| Adresse mail à laquelle monit envoyera les mails d'alerte.

| monit_activate_admin_dashboard
| Non
| False
| True or False
| Si `True`, monit activera l'interface d'admin sur lequel on peut suivre les services qui sont surveillés.
Si `False`, monit n'activera pas l'interface d'admin.

| monit_admin_dashboard_port
| Non
| -
| -
| Port d'écoute de l'interface d'admin de monit. 
À renseigner (2812 par exemple) si `monit_activate_admin_dashboard` est à `True`.

| monit_admin_login
| Non
| -
| -
| Login à saisir pour se connecter à l'interface d'admin de monit. 
À renseigner si `monit_activate_admin_dashboard` est à `True`.

| monit_admin_password
| Non
| -
| -
| Mot de passe à saisir pour se connecter à l'interface d'admin de monit. 
À renseigner si `monit_activate_admin_dashboard` est à `True`.

| use_iptables_firewall
| Non
| False
| True or False
| Si `True` et `monit_activate_admin_dashboard`=`True`, une tâche va ouvrir le port `monit_admin_dashboard_port` via iptables
À renseigner si `monit_activate_admin_dashboard` est à `True`.
|===

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.
