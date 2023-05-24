# Creates an S3 bucket for storing raw data
module "azure-resources" {
  source      = "../modules/virtual_machine"
  location    = "eastus"
  prefix      = "tf"
}
