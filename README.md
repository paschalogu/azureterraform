# DevOps Blank Projects


## Project One: Deployment of Microsoft Cloud and Azure Product Line on VM
## Project Two: Infrastructure as Code

## Project One: Deployment of Microsoft Cloud and Azure Product Line on VM

#### Objective:
As a DevOps engineer, the objective is to prepare a virtual machine (VM) that enables the company to launch and scale their new line of business, focused on selling Microsoft Cloud and Azure-related products. The VM should be accessible to the global market and configured to only allow traffic on ports 80 and 443. Additionally, it should be deployed on the sub-domain azure.paschalogu.com.

#### Task Steps:
Provision and Configure Virtual Machine:
a. Select an appropriate cloud provider (e.g., Azure) to host the VM.
b. Provision a VM instance with suitable specifications and operating system (e.g., Windows Server with Microsoft Azure tools and services).
c. Configure the VM with necessary security measures, including firewall settings, to allow access only on ports 80 (HTTP) and 443 (HTTPS).

#### Domain Configuration:
a. Purchase or already own the domain paschalogu.com.
b. Create a sub-domain named "azure" to represent the new line of business.
c. Configure the DNS settings for the sub-domain azure.paschalogu.com to point to the public IP address of the VM.

#### SSL/TLS Certificate Installation:
a. Acquire an SSL/TLS certificate from a trusted certificate authority (CA) for the sub-domain azure.paschalogu.com.
b. Install the SSL/TLS certificate on the VM to enable secure HTTPS communication (port 443).


## Project Two: Infrastructure as Code
As a DevOps engineer, here's a task to setup Azure Cloud VM infrastructure using Terraform, Jenkins, and Ansible that will server the company payment product. The VM should have a public IP address and and available on port 80.

### Details of the VM
location               = "eastus"
Machine size           = "Standard_D2s_v3"
VM publisher           = "Canonical"
VM offe                = "UbuntuServer"
VM sku                 = "20.04-LTS"
VM version             = "latest"

## Tasks:
a. Terraform Script Development:
i.) Utilize infrastructure-as-code (IaC) tools and frameworks (Terraform) to automate the deployment and configuration of the VM and associated resources.

b. Version Control with GitHub: 
i) Create a GitHub repository to store the Terraform script and other associated files.
ii) Push the developed Terraform script to the GitHub repository for version control and collaboration.

c. Ansible Configuration Management:
i.) Develop Ansible playbooks to configure the web server instances deployed by Terraform.
ii.) Define the necessary configurations, such as installing required software packages, setting up web server software (e.g., Apache or Nginx), and configuring any security measures.
iii.). Test the Ansible playbooks locally to ensure they successfully configure the web server.

d.)Jenkins Job Configuration:
i. Set up a Jenkins job that monitors the GitHub repository for changes in the Terraform script.
ii.) Configure the Jenkins job to trigger automatically upon detecting changes in the repository.
iii.) Define the necessary build steps within the Jenkins job to execute the Terraform script and apply any changes to the infrastructure.

### The solution to the Tasks

Make a directory to house all our projects and then subdirectory for each requirement

```bash
mkdir devtechproj
cd devtechproj
```

a.) Terraform Script that provisions the servers on Azure Cloud
b.) Git & GitHub for Version Control 
c.) Use Ansible to configure the webserver hosted on Azure Cloud
d.) Jenkins Pipeline GitHub, Terraform, Azure 



