fail2ban_ssh
=========

Le rôle fail2ban_ssh ajoute une configuration pour que Fail2Ban surveille les échecs d'authentification sur le serveur SSH.

Requirements
------------

- fail2ban

Role Variables
--------------

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|fail2ban_enabled| Oui|true|true|Activer le contrôle fail2ban sur le serveur SSH.|
|sshd_maxretry|Oui|6|6|Nombre d'authentification en échec pour bannir le client.|
|sshd_destination_mail|Oui|-|-|Adresse mail de réception des alertes mail.|
|sshd_bantime|Oui|600 secondes (10 minutes)|600 secondes (10 minutes)|Temps d'exclusion du client.|

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: fail2ban_ssh }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.