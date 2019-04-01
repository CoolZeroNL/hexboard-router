#!/bin/bash

oc project hexboard

oc delete svc/hexboard-router
oc delete rc/hexboard-router-1
oc delete deploymentconfig hexboard-router
oc delete pod hexboard-router
oc delete configmaps nginx-conf.d
oc delete configmaps nginx-default.d
oc delete configmaps nginx-config
oc delete pvc nginx-root
oc delete route hexboard-router