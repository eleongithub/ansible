jenkins_master
=========

Install Jenkins master server

Requirements
------------

None.

Role Variables
--------------

| Name	        | Default Value	| Description|
| ------------- |:-------------:| ----------:|
|jenkins_master_repository_key|https://jenkins-ci.org/debian/jenkins-ci.org.key|Jenkins package key.|
|jenkins_master_repository_list|deb http://pkg.jenkins-ci.org/debian-stable binary/|Jenkins debian package address.|
|jenkins_master_config_file|/etc/defaults/jenkins|Jenkins default configuration file.|
|jenkins_master_jenkins_home|/var/lib/jenkins|Jenkins home directory.|
|jenkins_master_initial_admin_password_file|/var/lib/jenkins/secrets/initialAdminPassword|File that contain admin initial password|
|jenkins_master_port|9090|Jenkins HTTP port|
|jenkins_master_network_interface|eth0|Enable log input trafic|
|jenkins_master_iptables_enabled|True|Enable log output trafic|
|jenkins_master_options|-Djenkins.install.runSetupWizard=false|Java options to run Jenkins|
|jenkins_master_plugins|-|List of plugins which will be install|


Dependencies
------------

jdk.

Example Playbook
----------------

Install jenkins_master
```yaml
- hosts: all
  roles:
    - { role: jenkins_master }
```

License
-------

BSD

Author Information
------------------

Eric LEGBA.
