fail2ban
=========

fail2ban est un programme écrit en Python qui a pour but de détecter les attaques de type Brute-Force.
Il lit les fichiers logs de plusieurs serveurs (SSH, FTP, HTTP, etc...) et étudie les comportements inhabituels
d'échecs d'authentification répétés. Il bannit l'adresse IP du client avec une règle iptables.

Requirements
------------


Role Variables
--------------
| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|mta_agent| Non|-|-|Type se serveur de mail que Postfix utilisera pour envoyer des mails d'alerte.|
|fail2ban_init_script|Oui|/etc/init.d/fail2ban|/etc/init.d/fail2ban|Script de contrôle du programme Fail2Ban.|
|fail2ban_jail_configuration_file|Oui|/etc/fail2ban/jail.conf|/etc/fail2ban/jail.conf|Fichier de configuration de fail2ban.|
|fail2ban_jail_configuration_orig_file|Oui|/etc/fail2ban/jail.conf.orig|/etc/fail2ban/jail.conf.orig|Fichier de configuration de fail2ban.|
|fail2ban_alert_mail|Non|-|user@localhost|Adresse mail de réception des mails d'alerte.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: fail2ban }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.