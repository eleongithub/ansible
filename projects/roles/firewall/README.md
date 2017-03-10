firewall
=========

Iptables est un outil en ligne de commande qui permet de configurer Netfilter,
module des noyau Linux qui fournit les par-feu, le partage de réseau Internet et l'historisation du trafic réseau.
firewall utilise la commande Iptables pour fournir un par-feu qui :
- ouvre les ports utilisés sur la plupart des serveurs (HTTP-80, HTTPS-443, SSH-22, etc...)
- maintient d'autres ports fermés.

Requirements
------------

- Iptables

Role Variables
--------------

| Nom	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|network_interface|eth0|Interface réseau sur lequel les règles Iptables sont appliquées.|
|firewall_script_files|-|Liste des scripts Bash utiles pour le parfeu.|
|firewall_input_allowed_ports|-|Listes des ports à ouvrir en entrée avec les protocoles associés.|
|firewall_output_allowed_ports|-|Listes des ports à ouvrir en sortie avec les protocoles associés.|

Plus d'informations sur les variables  [ici](https://github.com/eleongithub/ansible//ansible-postgresql-role/blob/master/defaults/main.yml)

Dependencies
------------

None.

Example Playbook
----------------

Install firewall
```yaml
- hosts: all
  roles:
    - { role: firewall }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.