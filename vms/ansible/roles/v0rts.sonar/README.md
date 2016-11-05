# Ansible Role: SonarQube
An Ansible Role that installs [SonarQube](http://www.sonarqube.org/) on RedHat/CentOS, Fedora and Ubuntu Linux servers.

## BUILDS


|Builder | Result|
|---|---|
|Travis |   [![Travis CI ](https://travis-ci.org/v0rts/ansible-role-sonar.svg?branch=master)](https://travis-ci.org/v0rts/ansible-role-sonar) |

|Installable Package | Version |
|---|---|
|SonarQube | 6.1 |




## Requirements

Requires the `unzip` utility to be installed on the server. SonarQube 5.x+ requires Java 1.7+.

## Role Variables

Available variables are listed below, along with default values:

    workspace: /root

Directory where downloaded files will be temporarily stored.

    sonar_download_url: http://dist.sonar.codehaus.org/sonarqube-x.x.x.zip
    sonar_version_directory: sonarqube-x.x.x

The URL from which SonarQube will be downloaded, and the resulting directory name (should match the download archive, without the archive extension).

    sonar_mysql_username: sonar
    sonar_mysql_password: sonar
    
    sonar_mysql_host: localhost
    sonar_mysql_port: "3306"
    sonar_mysql_database: sonar
    
    sonar_mysql_allowed_hosts:
      - 127.0.0.1
      - ::1
      - localhost

JDBC settings for a connection to a MySQL database. Defaults presume the database resides on localhost and is only accessible on the SonarQube server itself.

## Requirements

  - v0rts.java
  - v0rts.mysql

## Example Playbook

    - hosts: all
      roles:
        - v0rts.sonar

## License

MIT / BSD

## Original Author Information

This role was created in 2014 by [Jeff Geerling](http://jeffgeerling.com/), author of [Ansible for DevOps](http://ansiblefordevops.com/).
