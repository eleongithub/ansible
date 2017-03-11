fail2ban_ssh
=========

fail2ban_ssh adds a configuration so that Fail2Ban monitors authentication failures on the SSH server.

Requirements
------------

- fail2ban

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|fail2ban_enabled|True|Enable the fail2ban control on the SSH server.|
|sshd_maxretry|6|Number of authentication failed to ban a client.|
|sshd_destination_mail|root@localhost|Email address for receiving alerts.|
|sshd_bantime|600 seconds (10 minutes)|Exclusion time.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/fail2ban_ssh/defaults/main.yml)

Dependencies
------------

- fail2ban

Example Playbook
----------------

Install fail2ban_ssh
```yaml
- hosts: servers
  roles:
    - { role: fail2ban_ssh }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.