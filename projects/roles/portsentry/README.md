porsentry
=========

Porsentry est un programme de détection et de blocage de scan de ports. En effet, les hackers utilisent souvent des programmes (nmap par exemple) pour scanner les serveurs afin de connaître les ports ouverts sur un serveur.
Ce sont des techniques préalables pour connaître les portes ouvertes sur la machine. Pour pallier ces opérations, portsentry détecte les tentatives de scan de ports et les neutralisent.
Le rôle portsentry automatise l'installation du programme éponyme et modifie les fichiers de configurations.

Requirements
------------


Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisé	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|portsentry_config_file|Oui|/etc/default/portsentry|/etc/default/portsentry|Fichier de configuration de porsentry.|
|portsentry_notification_script|Non|-|/etc/portsentry/notification.sh|Programme Bash qui notifie à l'administrateur les activités suspectes détectées par portsentry.|
|portsentry_ignore_file|Oui|/etc/portsentry/portsentry.ignore|/etc/portsentry/portsentry.ignore|Fichier contenant la liste des adresses IP à ignorer en cas de scan.|
|portsentry_monitoring_mail|Non|-|-|Adresse mail de l'administrateur système.|

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