monit
=========

monit est un outil open-source de monitoring des services (SSH, PostgreSQL, Apache Tomcat, Apache,etc...) présents sur le serveur qui l'héberge. 
En cas d'indisponibilité d'un service, il peut :
  - déclencher un redémarrage automatique,
  - alerter par mail l'administrateur du système.
Enfin, monit fournit une interface Web sur lequel on peut consulter l'état des services surveillés.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|monit_daemon|60|Monit effectue la vérification des services toutes les 60 secondes.Cette variable indique l'intervalle régulier de temps pour chaque vérification.|
|monit_config_file|/etc/monit/monitrc|/etc/monit/monitrc|Fichier de configuration.|
|monit_send_alert_mail|True|Si `True`, monit envoie un mail d'alerte en cas de panne d'un service. Si `False`, monit n'envoie pas de mail d'alerte à l'administrateur du système.|
|monit_mail_server|localhost|Adresse du serveur de mail que monit utilisera pour envoyer les mails d'alerte à l'administrateur du système.|
|monit_mail_address|root@localhost|Adresse mail à laquelle monit envoyera les mails d'alerte.|
|monit_activate_admin_dashboard|True|Si `True`, monit active l'interface d'admin sur lequel on peut suivre les services qui sont surveillés. Si `False`, monit n'active pas l'interface d'admin.|
|monit_admin_dashboard_port|2812|Port d'écoute de l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|monit_admin_login|monit|Login à saisir pour se connecter à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|monit_admin_password|******|Mot de passe à saisir pour se connecter à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`.|
|iptables_enabled|False|Si `True` et `monit_activate_admin_dashboard`=`True`, une tâche ouvre le port `monit_admin_dashboard_port` via iptables. À renseigner si `monit_activate_admin_dashboard`=`True`.|

|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_logs_dir|/opt/apache2/logs|Apache's logs directory|
|apache_pid_file|/opt/apache2/logs/httpd.pid|Apache's PID file|
|apache_stop_command|/usr/sbin/service apache stop|Stop command|
|apache_start_command|/usr/sbin/service apache start|Start command|
|postgres_port|5432|Port d'écoute du serveur PostgreSQL.|
|monit_postgres_config_file|/etc/monit/conf.d/postgresql.conf|/etc/monit/conf.d/postgresql.conf|Fichier de configuration du serveur PostgreSQL à surveiller.|
|postgres_stop_command|/usr/sbin/service postgresql stop|La commande pour stopper le serveur PostgreSQL.|
|postgres_start_command|/usr/sbin/service postgresql start|La commande pour démarrer le serveur PostgreSQL.|
|monit_proftp_config_file|/etc/monit/conf.d/proftpd.conf|Fichier de configuration du serveur ProFTP à surveiller.|
|apache_stop_command|/usr/sbin/service proftpd stop|La commande pour stopper le serveur ProFTP.|
|apache_start_command|/usr/sbin/service proftpd start|La commande pour démarrer le serveur ProFTP.|
|monit_sshd_config_file|/etc/monit/conf.d/sshd.conf|Fichier de configuration du serveur SSH à surveiller.|
|sshd_stop_command|/usr/sbin/service sshd stop|La commande pour stopper le serveur SSH.|
|sshd_start_command|/usr/sbin/service sshd start|La commande pour démarrer le serveur SSH.|
|tomcat_http_port|8080|Port d'écoute du serveur Apache Tomcat.|
|monit_tomcat_config_file|/etc/monit/conf.d/tomcat.conf|Fichier de configuration du serveur Apache Tomcat à surveiller.|
|tomcat_stop_command|/usr/sbin/service tomcat stop|La commande pour stopper le serveur Apache Tomcat.|
|tomcat_start_command|/usr/sbin/service tomcat start|La commande pour démarrer le serveur Apache Tomcat.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/monit/defaults/main.yml)

Dependencies
------------

None.

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
