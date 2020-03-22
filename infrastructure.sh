#!/bin/bash

VAGRANT_PATH="k8s-cluster/infrastructure"

case $1 in
    "up") cd $VAGRANT_PATH && vagrant up ;;
    "destroy") cd $VAGRANT_PATH && vagrant destroy ;;
    *) echo "Param not found"
esac