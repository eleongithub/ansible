proftp_ssl
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|proftp_conf_path|/etc/proftpd/proftpd.conf|ProFTP main configuration file.|
|proftp_tls_conf_path|/etc/proftpd/tls.conf|ProFTP TLS configuration file.|
|proftp_tls_log_file|/var/log/proftpd/tls.log|ProFTP TLS log file.|
|proftp_ssl_cert_file|/etc/proftpd/ssl/ftp.cert.pem|TLS public certificat file.|
|proftp_ssl_key_file|/etc/proftpd/ssl/ftp.key.pem|TLS private key file.|
|proftp_ssl_config_file|/etc/proftpd/ssl/openssl_ca.conf|OpenSSL configuration file to generate private key and certificat.|
|proftp_dns|vhosts1.fr|ProFTP DNS address.|
|proftp_user|proftpd|ProFTP User.|
|proftp_user_group|proftpd|ProFTP User group.|
|proftp_ssl_files|-|List fo ProFTP and TLS files with its rights.|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/proftp_ssl/defaults/main.yml)

Dependencies
------------

- proftp

Example Playbook
----------------

Install proftp_ssl
```yaml
- hosts: servers
  roles:
    - { role: proftp_ssl }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.