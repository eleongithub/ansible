apache_mod_security
=========

apache_mod_security compiles and adds Mod Security module to Apache server.

More informations about Mod Security ? Look at [here.](https://github.com/SpiderLabs/ModSecurity/wiki)

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|mod_security_version|2.9.1|Mod security version|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_logs_dir|/var/log/apache2|Directory containing Apache's log files|
|apache_conf_dir|/opt/apache2/conf|Directory containing Apache's configuration files|
|mod_security_logs_dir|/opt/apache2/logs/modsecurity|Directory containing mod security's log files|
|mod_security_conf_dir|/opt/apache2/conf/modsecurity|Directory containing mod security's configuration files|
|root_user|root|Owner of mod security's directories|
|root_group|sys|Owner's group|
|mod_security_tarball_name|modsecurity-2.9.1.tar.gz|Mod security archive tar.gz|
|mod_security_url|http://xx.xx.xx.xx....|Url to download mod security archive (Private Repo Nexus).|
|mod_security_required_packages|-|List of prerequisite packages to install mod security.|
|mod_security_unzip_dir|/tmp/mod_security|Mod security unzip directory|
|mod_security_conf_files|-|List of configuration's files which will be deployed|


Dependencies
------------

- apache.

Example Playbook
----------------

Install apache_mod_security
```yaml
- hosts: servers
  roles:
    - { role: apache_mod_security }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.
