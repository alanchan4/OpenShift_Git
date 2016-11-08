#!/bin/sh

# WARNING: This file is created by the Configuration Wizard.
# Any changes to this script may be lost when adding extensions to this configuration.

DOMAIN_HOME="/u01/oracle/user_projects/domains/base_domain"

JAVA_OPTIONS="$JAVA_OPTIONS -Dweblogic.management.username=weblogic -Dweblogic.management.password=welcome1"
export JAVA_OPTIONS

${DOMAIN_HOME}/bin/startManagedWebLogic.sh FET02 t3://localhost:8001
