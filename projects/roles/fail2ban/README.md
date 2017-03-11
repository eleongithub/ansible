fail2ban
=========

Fail2Ban is a program written in Python that aims to detect Brute-Force attacks.
It reads the log files of several servers (SSH, FTP, HTTP, etc ...) and studies the unusual behaviors
of repeated authentication failures. It bans the IP address of the client with an iptables rule.
fail2ban is an Ansible role that allows you to install the eponymous program with the basic configurations.

Requirements
------------

None.
iptables_enabled: False
mta_agent: postfix
fail2ban_init_script: "/etc/init.d/fail2ban"
fail2ban_jail_configuration_file: "/etc/fail2ban/jail.conf"
fail2ban_jail_configuration_orig_file: "/etc/fail2ban/jail.conf.orig"
fail2ban_alert_mail: "ansible@localhost"

Role Variables
--------------
| Name	        | Default Value	| Description|
| ------------- |:-------------:| -----------|
|iptables_enabled|False|Booleen to change the configuration of fail2ban if an iptables firewall is enabled on the server.|
|mta_agent|postfix|Mail server to send alerts.|
|fail2ban_init_script|/etc/init.d/fail2ban|Script Bash to control (start, stop, status, etc...) Fail2Ban.|
|fail2ban_jail_configuration_file|/etc/fail2ban/jail.conf|Fail2Ban configuration file.|
|fail2ban_jail_configuration_orig_file|/etc/fail2ban/jail.conf.orig|Fail2Ban's original configuration file.|
|fail2ban_alert_mail|user@localhost|Email address for receiving alerts.|

Dependencies
------------

None.

Example Playbook
----------------

Install fail2ban
```yaml
- hosts: all
  roles:
    - { role: fail2ban }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.