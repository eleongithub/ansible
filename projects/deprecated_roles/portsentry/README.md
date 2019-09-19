portsentry
=========

les hackers, avant de procéder à des attaques, utilisent des programmes (nmap par exemple) pour scanner les serveurs afin de connaître les ports ouverts.
Porsentry est un programme de détection de scan et de blocage de l'attaquant. Il peut aussi envoyer des mails de notification lorsqu'il détecte un scan de port.
Ce rôle permet d'automatiser l'installation de Porsentry sur un serveur.

Requirements
------------
None.

Role Variables
--------------

| Nom	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|portsentry_tcp_mode|tcp|TCP Monitoring mode (tcp, stcp,atcp).|
|portsentry_udp_mode|udp|UDP Monitoring mode (udp, sudp,audp).|
|porsentry_package|portsentry|Porsentry package.|
|portsentry_config_file|/etc/default/portsentry|Porsentry configuration file.|
|portsentry_notification_script|/etc/portsentry/notification.sh|Bash programs which send alerting mails to the admin.|
|portsentry_ignore_file|/etc/portsentry/portsentry.ignore|Ignore IP address list.|
|portsentry_alert_mail|root@localhost|Admin address mail.|
|portsentry_goss_enabled|False|Enable goss to check portsentry after installation.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/portsentry/defaults/main.yml)


Dependencies
------------

None.

Example Playbook
----------------
Install portsentry
```yaml
- hosts: servers
  roles:
    - { role: portsentry }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.