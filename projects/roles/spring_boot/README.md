spring_boot
=========

Install Spring Boot application.

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|spring_boot_user|springboot|Spring Boot user.|
|spring_boot_group|springboot|Spring Boot group.|
|spring_boot_main_directory|/opt/springboot|Spring Boot main directory|
|spring_boot_conf_directory|/opt/springboot/conf|Configuration directory.|
|spring_boot_logs_directory|/opt/springboot/logs|Logs directory.|
|spring_boot_nexus_url|-|Nexus API URL where download Spring Boot application.|
|spring_boot_apps_repository|-|Maven - Spring Boot application Nexus Repository.|
|spring_boot_apps_groupid|-|Maven - Spring Boot application Group Id.|
|spring_boot_apps_artifactid|-|Maven - Spring Boot application Artifact Id.|
|spring_boot_apps_version|-|Maven - Spring Boot application version.|
|spring_boot_apps_package|jar|Maven - Spring Boot application type package.|
|spring_boot_apps_conf_files|-|Spring Boot application - List of configurations file.|
|spring_boot_port|9000|Spring Boot application web port.|
|sonarqube_iptables_enabled|False|If `True`, open `spring_boot_port` by iptables.|
|sonarqube_networspring_boot_network_interfacek_interface|eth0|Netwaork interface where iptables rule will be apply.|

Dependencies
------------
None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: spring_boot }

License
-------

BSD

Author Information
------------------

Eric LEGBA.