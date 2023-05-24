# DevOps Blank Project

As a DevOps engineer, here's a task to setup Azure Cloud VM infrastructure using Terraform, Jenkins, and Ansible that will server the company payment product. The VM should have a public IP address and and available on port 80.

### Details of the VM

location               = "eastus"
Machine size           = "Standard_D2s_v3"
VM publisher           = "Canonical"
VM offe                = "UbuntuServer"
VM sku                 = "20.04-LTS"
VM version             = "latest"

## Tasks:

1. Terraform Script to provision the webserver in a highly available environment (Azure cloud)
2. Push the Terraform script to GitHub for version control.
3. Using Ansible, configure the webserver on local.
4. Jenkins job that automatically detects changes in the terraform script on GitHub and deploys the changes.


### The solution to the Tasks

Make a directory to house all our projects and then subdirectory for each requirement

```bash
mkdir devtechproj
cd devtechproj
```

1.) Terraform Script that provisions the servers on Azure Cloud
2.) Git & GitHub for Version Control 
3.) Use Ansible to configure the webserver hosted on Azure Cloud
4.) Jenkins Pipeline GitHub, Terraform, Azure 



