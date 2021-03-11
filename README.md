# Virtualmonitor deployment

This repository contains Ansible playbooks for provisioning and configuring infrastructure for Virtualmonitor
project client applications.

## Usage

- Run the azure-ansible container with the script `start-ansible-shell.sh`
- Follow the instructions to login to the Virtualmonitor subscription using your azure account
- You should now be able to run a provisioning playbook in the Ansible shell

## Playbooks

There are separate playbooks for provisioning and destroying resources.
Running the playbooks inside the Ansible shell:

`ansible-playbook <playbook-name> -e @env/dev.yml -e @env/dev_secrets.yml -CD`

Remove the -CD flags when you are certain you wish to actually run the playbook

## Notes

- Running play-provision.yml when the webapp already exists does not seem to update all application settings. Run play-remove-app.yml first
and then play-provision.yml to update the application.

- Testing app provisioning playbook locally with -CD fails because the app plan and resource group it needs are not really created.
