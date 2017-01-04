firewall
=========

Iptables est un outil en ligne de commande qui permet de configurer Netfilter,
module des noyau Linux qui fournit les par-feu, le partage de réseau Internet et l'historisation du trafic réseau.
firewall utilise la commande Iptables pour fournir un par-feu qui :
- ouvre les ports utilisés sur la plupart des serveurs (HTTP-80, HTTPS-443, SSH-22, etc...)
- maintiennent les autres ports fermés.

Requirements
------------

- Iptables

Role Variables
--------------
 
| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|firewall_script_files| Oui|-|-|Liste des scripts Bash à copier sur le serveur cible avec les droits utilisateurs associés.|
|firewall_input_allowed_ports|Oui|-|-|Listes des ports à ouvrir en entrée avec les protocoles associés.|
|network_interface|Oui|eth0|eth0|Interface réseau sur lequel les règles Iptables seront appliqués.|
|firewall_output_allowed_ports|Oui|-|-|Listes des ports à ouvrir en sortie avec les protocoles associés.|

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: firewall }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.