# An incomplete base Docker image for running JupyterHub
#
# Add your configuration to create a complete derivative Docker image.
#
# Include your configuration settings by starting with one of two options:
#
# Option 1:
#
# FROM jupyterhub/jupyterhub:latest
#
# And put your configuration file jupyterhub_config.py in /srv/jupyterhub/jupyterhub_config.py.
#
# Option 2:
#
# Or you can create your jupyterhub config and database on the host machine, and mount it with:
#
# docker run -v $PWD:/srv/jupyterhub -t jupyterhub/jupyterhub
#
# NOTE
# If you base on jupyterhub/jupyterhub-onbuild
# your jupyterhub_config.py will be added automatically
# from your docker directory.

ARG BASE_IMAGE=jupyterhub/jupyterhub:latest
FROM $BASE_IMAGE AS builder

USER root

ENV DEBIAN_FRONTEND noninteractive

RUN pip install jupyterhub-ldapauthenticator notebook

#RUN apt-get install ldap-auth-client nscd

RUN apt update -y

RUN apt-get install libnss-ldap libpam-ldap ldap-utils nscd python3-dev build-essential gcc krb5-config python3-gssapi libkrb5-dev -y

RUN pip install sparkmagic

#RUN useradd admin

#RUN mkdir /home/admin

#RUN chmod 777 /home/admin

CMD ["jupyterhub"]