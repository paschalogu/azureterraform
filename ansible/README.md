# Terraform Script that provisions the server on Azure

Make a Repository to hold our Terraform Codes and change the directory to this newly created repository. 

```bash
mkdir Terraform
cd Terraform
```

Install Terraform. Depending on your operating system, the command may be slightly different. Refer to the terraform documentation for system-specific requirements: [https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

```bash
sudo snap install terraform --classic
```

Run `terraform --version` command to view the version on terraform installed. 

```bash
terraform --version
```

Create script to provisions 4 servers on AWS: This script creates an VM resource. Create a terraform file for the instance. we will call the file `main.tf`

```bash
touch main.tf
nano main.tf
```

```bash


```


Run `Terraform init` to initialize the repository.

```bash
terraform init
```

To see changes that will take effect before any action run `terraform plan`

```bash
terraform plan 
```

To apply the changes to our AWS environment, run the command below

```bash
terraform apply 
```

To see the state of the infrastructure run the command below `terraform state list`

```bash
terraform state list
```

To delete and clean up everything, run the destroy command below:

```bash
terraform destroy 
```
