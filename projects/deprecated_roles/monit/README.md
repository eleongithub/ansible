monit
=========

monit est un outil open-source de monitoring de services (SSH, PostgreSQL, Apache Tomcat, Apache,etc...). 
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
|monit_package|monit|Monit package|
|monit_daemon|60|Monit effectue la vérification des services toutes les 60 secondes.Cette variable indique l'intervalle régulier de temps pour chaque vérification|
|monit_config_file|/etc/monit/monitrc|/etc/monit/monitrc|Fichier de configuration|
|monit_send_alert_mail|True|Si `True`, monit envoie un mail en cas de panne d'un service. Si `False`, monit n'envoie pas de mail à l'administrateur du système|
|monit_goss_enabled|False|Enable goss to check monit after installation|
|monit_mail_server|localhost|Adresse du serveur de mail que monit utilisera pour envoyer les mails d'alerte à l'administrateur du système|
|monit_mail_address|root@localhost|Adresse mail à laquelle monit envoyera les mails d'alerte|
|monit_activate_admin_dashboard|True|Si `True`, monit active une interface d'admin. Si `False`, monit n'active pas l'interface d'admin|
|monit_network_interface|eth0|Network interface.|
|monit_admin_dashboard_port|2812|Port d'écoute de l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`|
|monit_admin_login|monit|Login de connection à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`|
|monit_admin_password|******|Mot de passe de connection à l'interface d'admin de monit. À renseigner si `monit_activate_admin_dashboard`=`True`|
|monit_iptables_enabled|False|`monit_activate_admin_dashboard`=`True`, ouverture du port `monit_admin_dashboard_port` via iptables. À renseigner si `monit_activate_admin_dashboard`=`True`|

|monit_apache_home|/opt/apache2|Installation directory for the current version of Apache|
|monit_apache_logs_dir|/opt/apache2/logs|Apache's logs directory|
|monit_apache_pid_file|/opt/apache2/logs/httpd.pid|Apache's PID file|
|monit_apache_stop_command|/usr/sbin/service apache stop|Stop command|
|monit_apache_start_command|/usr/sbin/service apache start|Start command|
|monit_postgres_port|5432|Port d'écoute du serveur PostgreSQL.|
|monit_postgres_config_file|/etc/monit/conf.d/postgresql.conf|/etc/monit/conf.d/postgresql.conf|Fichier de configuration du serveur PostgreSQL à surveiller.|
|monit_postgres_stop_command|/usr/sbin/service postgresql stop|La commande pour stopper le serveur PostgreSQL.|
|monit_postgres_start_command|/usr/sbin/service postgresql start|La commande pour démarrer le serveur PostgreSQL.|
|monit_proftp_config_file|/etc/monit/conf.d/proftpd.conf|Fichier de configuration du serveur ProFTP à surveiller.|
|monit_apache_stop_command|/usr/sbin/service proftpd stop|La commande pour stopper le serveur ProFTP.|
|monit_apache_start_command|/usr/sbin/service proftpd start|La commande pour démarrer le serveur ProFTP.|
|monit_sshd_config_file|/etc/monit/conf.d/sshd.conf|Fichier de configuration du serveur SSH à surveiller.|
|monit_sshd_stop_command|/usr/sbin/service sshd stop|La commande pour stopper le serveur SSH.|
|monit_sshd_start_command|/usr/sbin/service sshd start|La commande pour démarrer le serveur SSH.|
|monit_tomcat_http_port|8080|Port d'écoute du serveur Apache Tomcat.|
|monit_tomcat_config_file|/etc/monit/conf.d/tomcat.conf|Fichier de configuration du serveur Apache Tomcat à surveiller.|
|monit_tomcat_stop_command|/usr/sbin/service tomcat stop|La commande pour stopper le serveur Apache Tomcat.|
|monit_tomcat_start_command|/usr/sbin/service tomcat start|La commande pour démarrer le serveur Apache Tomcat.|

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
