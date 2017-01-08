jdk
=========

Installation du Java Development Kit (JDK).

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------


jdk_versions: /opt/jdk_versions
jdk_last_version: "{{ jdk_versions }}/jdk{{ java_version }}"
jdk_tarball_name_32: jdk-8u73-linux-i586.tar.gz
jdk_tarball_name_64: jdk-8u73-linux-x64.tar.gz
os_32: 32
os_64: 64
jdk_32_url: "{{ nexus_public_repository }}/com/oracle/jdk/{{ java_version }}/jdk-{{ java_version }}-{{ os_32 }}.tar.gz"
jdk_64_url: "{{ nexus_public_repository }}/com/oracle/jdk/{{ java_version }}/jdk-{{ java_version }}-{{ os_64 }}.tar.gz"

| Nom	        | Obligatoire	| Valeur par défaut  | Valeur utilisée	| Description|
| ------------- |:-------------:| ------------------:|:--------:|:-----------|
|java_version| Oui|1.8.0_73|1.8.0_73|Version du JDK à installer.|
|jdk_versions|Oui|/opt/jdk_versions|/opt/jdk_versions|Répertoire où sont installés tous les JDKs. Il peut y avoir plusieurs JDKs installés. Mais un seul JDK est utilisé à un instant T.|
|jdk_tarball_name_32|Oui|jdk-8u73-linux-i586.tar.gz|jdk-8u73-linux-i586.tar.gz|Archive `.gz` du JDK pour les machines 32 bits.|
|jdk_tarball_name_64|Oui|jdk-8u73-linux-x64.tar.gz|jdk-8u73-linux-x64.tar.gz|Archive `.gz` du JDK pour les machines 64 bits.|
|os_32|Oui|32|32|Architecture machine 32 bits.|
|os_64|Oui|64|64|Architecture machine 64 bits.|
|jdk_32_url|Oui|-|-|URL pour télécharger sur un repository Nexus le JDK pour une machine 32 bits.|
|jdk_64_url|Oui|-|-|URL pour télécharger sur un repository Nexus le JDK pour une machine 64 bits.|

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: jdk }

License
-------

BSD

Author Information
------------------

Created in 2016 by Eric LEGBA.