# ⚙️ Ansible LAMP Stack Automation - by A Balakrishna

This project automates the setup of a **LAMP stack** (Linux, Apache, MySQL, PHP) using **Ansible**. It installs and configures all necessary services to host a dynamic web application on Ubuntu servers.

GitHub Repo: [balakrishnabadri25/devops-portfolio](https://github.com/balakrishnabadri25/devops-portfolio)

---

## 📂 Project Structure

Ansible/ └── lamp-stack-playbook/ ├── playbook.yml # Main Ansible playbook ├── inventory # Inventory with target hosts ├── ansible.cfg # Ansible configuration file └── README.md # Project documentation

yaml
Copy
Edit

---

## 🛠️ Technologies Used

- Ansible
- Apache2
- MySQL Server
- PHP & PHP-MySQL
- Ubuntu Linux

---

## 🚀 How to Run the Playbook

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/balakrishnabadri25/devops-portfolio.git
cd devops-portfolio/Ansible/lamp-stack-playbook/
2️⃣ Inventory File Setup
ini
Copy
Edit
[webserver]  # Group name
target ansible_host=<your-private-ip-address>

[webserver:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=<path-to-your-private-key>
Example:

ini
Copy
Edit
[webserver]
target ansible_host=192.168.56.10

[webserver:vars]
ansible_user=ubuntu
ansible_ssh_private_key_file=~/.ssh/id_rsa
3️⃣ ansible.cfg Setup
ini
Copy
Edit
[defaults]
host_key_checking = False       # Skip SSH fingerprint confirmation
forks = 5                       # Run tasks in parallel on 5 hosts
inventory = ./inventory         # Relative path to inventory file
4️⃣ Run the Playbook
bash
Copy
Edit
ansible-playbook -i inventory playbook.yml
📋 What This Playbook Does
Installs Apache, MySQL, PHP, and PHP-MySQL

Starts and enables Apache & MySQL services

Sets up a base for deploying dynamic web apps

📚 Learning Outcome
Infrastructure automation using Ansible

Writing and organizing production-ready playbooks

Managing remote servers using SSH and key-based auth

👨‍💻 Author
A Balakrishna
GitHub: balakrishnabadri25

Feel free to ⭐ the repo or fork it if you found it useful!
