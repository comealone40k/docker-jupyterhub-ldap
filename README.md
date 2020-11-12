# docker-jupyterhub+ldap

# Services

## OpenLDAP

## PhpLDAPadmin

## Jupyterhub

# Volumes

## LDAP

* ldap/lib - user databases
* ldap/slapd.d - ldap configs

# Usage

```
docker build -t jupyterhub/jupyterhub:latest .
docker-compose up
```

* [PHPLDAPadmin](https://localhost:6443)

* [Jupyterhub](http://localhost:8000)

# Users

## PHPadmin

cn=admin,dc=example,dc=org / admin

Existing LDAP accounts:

* admin/admin

* lkomlosi/laca

After creating the lkomlosi user in Jupyterhub, you can log in with that too.

# Tutorial

1) PHPLDAPadmin

![PHPLDAPadmin](pictures/phpldapadmin-users.png)

2) Jupyterhub admin login

![PHPLDAPadmin](pictures/jupyterhub_admin.png)

3) Jupyterhub admin UI

![PHPLDAPadmin](pictures/jupyterhub_admin_ui.png)

4) Jupyterhub admin UI Control Panel

![PHPLDAPadmin](pictures/jupyterhub_admin_ui_control_panel.png)

5) Jupyterhub admin Add User

![PHPLDAPadmin](pictures/jupyterhub_admin_ui_add_user.png)

6) Jupyterhub admin Add User

![PHPLDAPadmin](pictures/jupyterhub_admin_ui_add_user_add.png)

7) Jupyterhub admin Start user server

![PHPLDAPadmin](pictures/jupyterhub_admin_ui_start_server.png)

8) Jupyterhub admin User server started

![PHPLDAPadmin](pictures/jupyterhub_admin_ui_started_server.png)

9) Jupyterhub lkomlosi login

![PHPLDAPadmin](pictures/jupyterhub_lkomlosi.png)

10) Jupyterhub lkomlosi UI

![PHPLDAPadmin](pictures/jupyterhub_lkomlosi_ui.png)


#
```
 _   _   ___  _   _ _____  ______ _   _ _   _ 
| | | | / _ \| | | |  ___| |  ___| | | | \ | |
| |_| |/ /_\ \ | | | |__   | |_  | | | |  \| |
|  _  ||  _  | | | |  __|  |  _| | | | | . ` |
| | | || | | \ \_/ / |___  | |   | |_| | |\  |
\_| |_/\_| |_/\___/\____/  \_|    \___/\_| \_/
```

