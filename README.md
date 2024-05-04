# Ansible Nginx Installation Project

## Installation Steps

To install Nginx using Ansible, follow these steps:

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/deployguru-learning/elie-bamunoba-dg-ansible.git
    ```

2. Navigate to the project directory:
    ```bash
    cd elie-bamunoba-dg-ansible
    ```

3. Ensure that you have an Ansible inventory file named `hosts` in the project directory. If not, create one with the following content:
    ```plaintext
    localhost ansible_connection=local
    ```

4. Run the Ansible playbook to install Nginx on the target host:
    ```bash
    ansible-playbook -i hosts install_nginx.yml
    ```

5. After the playbook execution, verify that Nginx is installed and running:
    - Open a web browser and navigate to http://localhost. You should see the default Nginx welcome page.
    - Alternatively, use the command line to verify:
      ```bash
      curl http://localhost
      ```

## Customization

You can customize the playbook and role according to your requirements. Here are some customization options:

- Creating a Role: To create a new role, you can use the `ansible-galaxy` command:
  ```bash
  ansible-galaxy init <role-name>
  ```
  This will create a directory structure for your role, including directories for tasks, handlers, variables, etc. You can then edit these files to define the behavior of your role.

## Project Structure

The project directory structure is as follows:
```
ansible-nginx-installation/
├── inventory/
│   └── hosts
├── playbooks/
│   └── install_nginx.yml
└── roles/
    └── nginx_install/
        ├── defaults/
        ├── files/
        ├── handlers/
        ├── meta/
        ├── README.md
        ├── tasks/
        │   └── main.yml
        ├── templates/
        └── vars/
```
- inventory/: Contains the Ansible inventory file specifying the target hosts.
- playbooks/: Contains Ansible playbook files. The install_nginx.yml playbook installs Nginx.
- roles/: Contains Ansible roles. The nginx_install role installs and configures Nginx.
# Contributing
Contributions to this project are welcome! Feel free to open issues for any questions or suggestions, or submit pull requests with improvements.

# License
This project is licensed under the MIT License.