porsentry
=========

les hackers, avantde procéder à des attaques, utilisent des programmes (nmap par exemple) pour scanner les serveurs afin de connaître les ports ouverts.
Porsentry est un programme de détection de scan et de blocage de l'attaquant. Il peut aussi envoyer des mails de notification lorsqu'il détecte un scan de port.
Ce rôle permet d'automatiser l'installation de Porsentry sur un serveur.

Requirements
------------


Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisé	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|tcp_mode|Oui|tcp|atcp|Mode de surveillance TCP(tcp, stcp,atcp).|
|udp_mode|Oui|udp|audp|Mode de surveillance UDP(udp, sudp,audp).|
|portsentry_config_file|Oui|/etc/default/portsentry|/etc/default/portsentry|Fichier de configuration de porsentry.|
|portsentry_notification_script|Non|-|/etc/portsentry/notification.sh|Programme Bash qui notifie à l'admin les scans de ports détectés.|
|portsentry_ignore_file|Oui|/etc/portsentry/portsentry.ignore|/etc/portsentry/portsentry.ignore|Fichier contenant la liste des adresses IP à ignorer en cas de scan.|
|portsentry_alert_mail|Non|-|-|Adresse mail de l'administrateur système.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: portsentry }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.