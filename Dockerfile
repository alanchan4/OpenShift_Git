# LICENSE CDDL 1.0 + GPL 2.0
#
# Copyright (c) 2015 Oracle and/or its affiliates. All rights reserved.
# 
# ORACLE DOCKERFILES PROJECT
# --------------------------
# This Dockerfile extends the Oracle WebLogic sample 1221-domain
#
# It will create a DataSource as per container-scripts/datasource.properties
# It will create a JMS Server and Queue
#
# HOW TO BUILD THIS IMAGE
# -----------------------
# Run: 
#      $ docker build -t 1221-domain-with-resources .
#

# Pull base image
# ---------------
# FROM 1221-domain 
FROM docker.io/alanchan4/wlsdomain:latest


# Maintainer
# ----------
MAINTAINER Bruno Borges <bruno.borges@oracle.com>

# Copy files and deploy application in WLST Offline mode
COPY container-scripts/* /u01/oracle/

#Alan 
#RUN wlst -loadProperties /u01/oracle/datasource.properties /u01/oracle/ds-deploy.py && \
#    wlst /u01/oracle/jms-deploy.py

RUN wlst -loadProperties /u01/oracle/datasource.properties /u01/oracle/ds-deploy.py
RUN wlst /u01/oracle/app-deploy.py

