# Ansible WireGuard Setup

This project contains Ansible playbooks for setting up a WireGuard VPN server on a fresh Ubuntu instance. It includes tasks for initial server setup, unattended upgrades, and WireGuard installation and configuration.

## Requirements

- Ansible 2.9 or later
- A fresh Ubuntu 20.04 or later server
- SSH access to the server as root or another user with sudo privileges

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/alexpyzhianov/ansible-wireguard.git
    cd ansible-wireguard
    ```

2. Copy `vars.example.yml` to `vars.yml`:

    ```bash
    cp vars.example.yml vars.yml
    ```

3. Edit `vars.yml` with your desired settings. Be sure to replace all placeholders with your actual values.

4. Run the playbook:

    ```bash
    ansible-playbook -i hosts.ini main.yml
    ```

Replace `hosts.ini` with the path to your Ansible inventory file. The playbook will be run on all servers listed in the inventory file.
