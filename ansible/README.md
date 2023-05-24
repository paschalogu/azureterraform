## Configure Ansible on an Azure VM


### Connect to your virtual machine via SSH

Log into the VM with SSH

```bash
ssh adminuser@ip_address
```

### Install Ansible on the virtual machine

Install ansible on your local environment. Refer to the documentation for system-specific requirements: https://docs.ansible.com/ansible/latest/installation_guide/index.html.


create a bash file 

```bash
nano installation.sh
```

Copy the code below into the file `installation.sh`

```bash
#!/bin/bash

sudo apt update

sudo apt install ansible

sudo apt install python3-pip

pip install boto3 botocore

pip install boto
```


Run the code in change file permission and install the above requirements

```bash
chmod +x ./installation.sh

./installation.sh
```

### Test Ansible installation
We can test is ansible is properly configured by runnung the command below: This shouls pront the version of ansible installed.

```bash
ansible --version
```

### Create Azure credentials


1. Create Ansible credentials file. Once you've successfully connected to the host virtual machine and installed the Ansible, create and open a file named `credentials`

```bash
mkdir ~/.azure
vi ~/.azure/credentials
```
2. Insert the following lines into the file. Replace the placeholders with the service principal values.

```bash
[default]
subscription_id=<subscription_id>
client_id=<service_principal_app_id>
secret=<service_principal_password>
tenant=<service_principal_tenant_id>
```

Write and run an Ansible playbook to provision and serve the webserver

```bash
---
- name: installing and starting nginx
  hosts: localhost
  become: yes
  
  tasks: 
    - name: installing nngix
      apt: 
        name: nginx 
        state: present
    
    - name: stop nginx
      service: 
        name: nginx
        state: started

#ansible-playbook ansible-playbook.yml --ask-become-pass --check

```

```bash
ansible-playbook ansible-playbook.yml --ask-become-pass --check
```

copy your ip_add adress and test it on the browser
