apache_mod_jk
=========

A brief description of the role goes here.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|http_default_port|80|HTTP Port|
|mod_jk_version|1.2.41|Mod jk version|
|apache_home|/opt/apache2|Installation directory for the current version of Apache|
|apache_modules_dir|/opt/apache2/modules|Apache's modules directory|
|apache_modules_file|/opt/apache2/conf/modules.conf|List of the modules|
|root_user|root|Owner of the Apache's directories|
|root_group|sys|Owner's group|
|apr_config_file|/usr/bin/apr-1-config|APR configuration file|
|mod_jk_tarball_name|tomcat-connectors-1.2.41-src.tar.gz|Mod jk archive tar.gz|
|mod_jk_url|http://xx.xx.xx.xx....|Url to download mod jk archive (Repo Nexus).|
|mod_security_required_packages|-|List of prerequisite packages to install mod security.|
|mod_jk_unzip_dir|/tmp/mod_jk|Mod jk unzip directory|
|mod_jk_dir|/tmp/mod_jk/tomcat-connectors-1.2.41-src/native|Mod jk unzip sub-directory|

Dependencies
------------

- apache.

Example Playbook
----------------

Install apache_mod_jk
```yaml
- hosts: servers
  roles:
    - { role: apache_mod_jk }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.