sudo_users
=========

sudo_users configures technical user for deployment

Requirements
------------

None.

Role Variables
--------------


| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|user_name|deploy|Technical account for deployment.|
|user_comment|Technical user for deployment|Comment on creation account|
|user_key_passphrase|/etc/proftpd/ssl/ftp.cert.pem|Passphrase to protect private SSH key.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/sudo_users/defaults/main.yml)

Dependencies
------------

None.

Example Playbook
----------------

Install sudo_users
```yaml
- hosts: servers
  roles:
    - { role: sudo_users }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.