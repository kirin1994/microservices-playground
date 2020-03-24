#!/bin/bash

VAGRANT_PATH="k8s-cluster/infrastructure"
ANSIBLE_PATH="k8s-cluster/infrastructure/ansible"

case $1 in
    "up") cd $VAGRANT_PATH && vagrant up ;;
    "destroy") cd $VAGRANT_PATH && vagrant destroy ;;
    "ping") ansible -i $ANSIBLE_PATH/inventory all -m ping ;;
    "k8s-install") ansible-playbook -i $ANSIBLE_PATH//inventory  $ANSIBLE_PATH/playbooks/k8s-install.yaml ;;
    "k8s-create-cluster") ansible-playbook -i $ANSIBLE_PATH/inventory  $ANSIBLE_PATH/playbooks/k8s-create-cluster.yaml ;;
    *) echo "Param not found"
esac