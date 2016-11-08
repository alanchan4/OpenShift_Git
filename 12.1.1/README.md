Example of Image with WLS Domain
================================
This Dockerfile extends the Oracle WebLogic image by creating a sample empty domain.

Util scripts are copied into the image enabling users to plug NodeManager automatically into the AdminServer running on another container.

# How to build and run
First make sure you have built **oracle/weblogic:12.2.1-developer**. Now to build this sample, run:

        $ docker build -t 1211-domain --build-arg ADMIN_PASSWORD=welcome1 .

To start the containerized Admin Server, run:

        $ docker run -d --name wlsadmin --hostname wlsadmin -p 8001:8001 1221-domain

# Copyright
Copyright (c) 2014-2016 Oracle and/or its affiliates. All rights reserved.
