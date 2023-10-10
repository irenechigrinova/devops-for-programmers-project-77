### Hexlet tests and linter status:
[![Actions Status](https://github.com/irenechigrinova/devops-for-programmers-project-77/workflows/hexlet-check/badge.svg)](https://github.com/irenechigrinova/devops-for-programmers-project-77/actions)

## Requirements
- ubuntu >= 22
- [Yandex CLI](https://cloud.yandex.com/en/docs/cli/quickstart#install)
- [Ansible](https://www.ansible.com/)
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)

## Setup
- Generate ssh-keys and put public in ~/.ssh/id_rsa.pub
- Copy file from /terraform/.terraformrc and put it in the Home directory
- Copy file from /terraform/templates/secret.auto.template.tfvars, rename it to secret.auto.tfvars, fill in the data and put it into terraform folder. This file contains credetials for the cloud, db and monitoring.
- Copy file from /terraform/templates/secret.backend.template.tfvars, rename it to secret.backend.tfvars, fill in the data and put it into terraform folder. This file contains credetials for backend state.

## Terraform
All neccessary commands can be found in Makefile (plan, apply, etc.)

After running ```apply``` terraform will output vm and balancer ips and also it will generate file with variables for ansible in /ansible/group_vars/all
