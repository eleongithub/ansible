apache_private_ca
=========

Create a private certificat authority for Apache server.

Requirements
------------

OpenSSL.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|root_user|root|Owner of the Apache's directories|
|root_group|sys|Owner's group|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_ssl_ca_md|sha256||
|apache_ssl_ca_dir|/opt/apache2/private_ca|Directory of private authority|
|apache_ssl_ca_key|/opt/apache2/private_ca/ca_key.pem|Private key of authority|
|apache_ssl_ca_cert|/opt/apache2/private_ca/ca_cert.pem|Public certifcat of authority|
|apache_ssl_ca_bits|2048|certifcat file is generated on 2048 bits|
|apache_ssl_ca_default_days|3650 days (10 years)|Days of expiration|
|apache_ssl_ca_country|FR|Country of code certificat authority|
|apache_ssl_ca_state|Rhone|State of certificat authority|
|apache_ssl_ca_locality|Lyon|Locality of certificat authority|
|apache_ssl_ca_organisation|Syscom|Organisation of certificat authority|
|apache_ssl_ca_organisation_unit|IT|Organisation unit of certificat authority|
|apache_ssl_ca_name|Authority Company Inc|Name of certificat authority|
|apache_ssl_ca_subj|-|All informations of certificat authority|

Dependencies
------------

None.

Example Playbook
----------------

Install apache_conf
```yaml
- hosts: all
  roles:
    - { role: apache_private_ca }
```

License
-------

BSD

Author Information
------------------
Eric LEGBA.