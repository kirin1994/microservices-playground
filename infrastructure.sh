#!/bin/bash

VAGRANT_PATH="k8s-cluster/infrastructure"
ANSIBLE_PATH="k8s-cluster/infrastructure/ansible"

case $1 in
    "up") cd $VAGRANT_PATH && vagrant up ;;
    "destroy") cd $VAGRANT_PATH && vagrant destroy ;;
    "ping") ansible -i $ANSIBLE_INVENTORY_PATH/inventory all -m ping ;;
    "k8s-install") ansible-playbook -i k8s-cluster/infrastructure/ansible/inventory  k8s-cluster/infrastructure/ansible/k8s-install-playbook.yaml ;;
    *) echo "Param not found"
esac