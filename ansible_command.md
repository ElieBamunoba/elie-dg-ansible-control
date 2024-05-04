
# Ansible Commands

This document provides a list of commonly used Ansible commands that are essential for managing and working with Ansible playbooks and configurations.

## 1. ansible-galaxy

This command-line tool is used to manage roles, collections, and other content from the Ansible Galaxy community hub. Commonly used options include:

- `ansible-galaxy install`: Installs roles and collections from Ansible Galaxy.
- `ansible-galaxy init`: Initializes a new role or collection directory structure.
- `ansible-galaxy remove`: Removes roles and collections.
- `ansible-galaxy import`: Imports roles and collections into a Galaxy namespace.
- `ansible-galaxy search`: Searches for roles and collections on Ansible Galaxy.

## 2. ansible-doc

This command displays documentation for Ansible modules. Usage:

```bash
ansible-doc <module-name>
```
## 3. ansible-vault
Ansible Vault is used to encrypt sensitive data such as passwords, keys, or any other secure information. Commonly used options include:

- `ansible-vault create`: Create a new encrypted file.
- `ansible-vault edit`: Edit an existing encrypted file.
- `ansible-vault encrypt`: Encrypt an existing plaintext file.
- `ansible-vault decrypt`: Decrypt an encrypted file.
- `ansible-vault view`: View the contents of an encrypted file.

## 4. ansible-playbook
While you're familiar with running playbooks, here are some additional options:

- `-e`: Pass extra variables to the playbook.
- `--check`: Run the playbook in check mode, which performs a dry run without making any changes.
- `--limit`: Limit execution to specific hosts or groups.
- `--tags`: Run only tasks tagged with specified tags.
- `--skip-tags`: Skip tasks tagged with specified tags.

## 5. ansible
The ansible command itself has various useful options:

- `-m`: Specifies the module to use.
- `-a`: Specifies arguments to pass to the module.
- `--list-hosts`: Lists all hosts that are configured in your inventory.
- `--list-tasks`: Lists all tasks in a playbook without executing them.
- `--syntax-check`: Checks the syntax of the playbook file without executing it.
- `--version`: Displays the version of Ansible installed.

## 6. ansible-config
This command is used to view and manage Ansible configuration settings. Commonly used options include:

- `ansible-config list`: Lists all configuration settings and their values.
- `ansible-config view`: Displays the current configuration in ini format.
- `ansible-config dump`: Displays the current configuration in JSON format.