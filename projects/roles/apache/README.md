Role Name
=========

apache role compile Apache server from source and installs if from scratch. 

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|apache_version|2.4.23|Apache's Version.|
|apache_versions|/opt/apache_versions|Directory containing Apache version sources that have been installed.|
|apache_home|/opt/apache2|Installation directory for the current version of Apache.|
|apache_last_version|/opt/apache_versions/httpd-2.4.23|Directory containing Apache 2.4.23 sources.|
|apache_tarball_name|httpd-2.4.23.tar.gz|Apache archive tar.gz.|
|apache_url|http://xx.xx.xx.xx:9081/nexus/content/repositories/public/org/apache/httpd/2.4.23/httpd-2.4.23.tar.gz|Url to download the apache archive (Repo Nexus).|
|apache_required_packages|-|List of prerequisite packages to install Apache.|

Dependencies
------------

None

Example Playbook
----------------
Install apache
```yaml
- hosts: servers
  roles:
    - { role: apache }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.
