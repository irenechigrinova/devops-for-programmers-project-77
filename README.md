### Hexlet tests and linter status:
[![Actions Status](https://github.com/irenechigrinova/devops-for-programmers-project-77/workflows/hexlet-check/badge.svg)](https://github.com/irenechigrinova/devops-for-programmers-project-77/actions)

## Requirements
- ubuntu >= 22
- [Yandex CLI](https://cloud.yandex.com/en/docs/cli/quickstart#install)

## Setup
- Generate ssh-keys and put public in ~/.ssh/id_rsa.pub
- Copy file from /terraform/.terraformrc and put it in the Home directory
- Get secret.auto.tfvars and put it in terraform folder
- Set env variables for bucket:
    ```export ACCESS_KEY = <value>```
    ```export SECRET_KEY = <value>```
- Run make init, using provided credentials

Use commands from Makefile to manage the infrastructure
