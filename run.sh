#!/bin/bash

oc new-project hexboard
oc project hexboard
oc process -f nginx-template-centos7.yaml APP_NAME=hexboard-router NGINX_ROUTE_HOSTNAME=m.tempdata.nl NGINX_ROUTE_INT_HOSTNAME=m2.tempdata.nl | oc create -f -