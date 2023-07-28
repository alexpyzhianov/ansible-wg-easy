# wg-easy ❤️ Ansible

This project contains Ansible playbooks for setting up a WireGuard VPN server on a fresh Ubuntu instance. It includes tasks for initial server setup, unattended upgrades, and WireGuard installation and configuration. The project uses the amazing https://github.com/wg-easy/wg-easy Docker image, check it out to learn more

## Requirements

- Ansible 2.9 or later
- A fresh Ubuntu 20.04 or later server
- SSH access to the server as root or another user with sudo privileges

## Usage

1. **Clone this repository:**

```bash
git clone https://github.com/alexpyzhianov/ansible-wireguard.git
cd ansible-wireguard
```

2. **Copy `vars.example.yml` to `vars.yml`:**

```bash
cp vars.example.yml vars.yml
```

3. **Edit `vars.yml` with your desired settings:**

* **public_key_path** - you probably shouldn't even change
* **username**: - the non-root user with sudo privileges you want to create or keep on you VPS
* **hashed_password** - sudo password for that user hashed to make Ansible happy
* **wg_easy_password** - password for you WireGuard web UI

4. **Create your host.ini**
Something like this should do:
```
[servers]
00.000.00.000
```

5. **Run the playbook:**
Edit and run the `./cmd.sh` or use a plain `ansible-playbook` command that you prefer.

6. (optional) **Save you sudo password in become_pass**
If you're using my `./cmd.sh` file you can also avoid typing your sudo password on every run. Save it to `become_pass` file in plain text

```bash
echo "mysecretpassword" > become_pass
```

## Tags

The `main.yml` playbook includes several tags:

- `setup`: This role performs basic server setup tasks, such as updating the package cache, upgrading installed packages, and setting up unattended upgrades.

- `docker`: Installs and configures Docker

- `wg`: Does all the WireGuard related stuff, fetches and starts wg-easy Docker container
