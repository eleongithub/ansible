Role Name
=========

sonarqube.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|sonarqube_version|6.3.1|SonarQube version.|
|sonarqube_install_directory|/opt/sonar|SonarQube installation directory.|
|sonarqube_archive_name|sonarqube-6.3.1.zip|SonarQube archive name.|
|sonarqube_download_archive_url|-| URL where download SonarQube archive.|
|sonarqube_home|/opt/sonar/sonarqube-6.3.1|SonarQube home directory.|
|sonarqube_postgres_database_enabled|False|Enable/Disable SonarQube to store its datas into postgres database.|
|sonarqube_postgres_host|localst|postgres database address.|
|sonarqube_postgres_username|sonar|Postgres database username.|
|sonarqube_postgres_password|sonar|Pstgres database password.|
|sonarqube_postgres_database|sonar|Postgres database where sonar will store his datas.|
|sonarqube_postgres_jdbc_url|jdbc:postgresql://localhost/sonar|Postgres database URL.|
|sonarqube_postgres_config|-|Postgres database config.|
|sonarqube_web_port|9000|SonarQube web port.|
|sonarqube_iptables_enabled|False|If `True`, open `sonarqube_web_port` by iptables.|
|sonarqube_network_interface|eth0|Netwaork interface where iptables rule will be apply..|

More informations about variables [here.](https://github.com/eleongithub/ansible/blob/it_1/projects/roles/sonarqube/defaults/main.yml)


Dependencies
------------

none.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

Eric LEGBA.
