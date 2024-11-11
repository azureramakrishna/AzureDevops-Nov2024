# Terraform provider version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "2e28c82c-17d7-4303-b27a-4141b3d4088f"
}

# terraform backend
terraform {
  backend "azurerm" {
    resource_group_name  = "storage-resource-group"      # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "saanvikit"                   # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                     # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "moduledev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

module "windows_vm" {
  source = "../../Module/VirtualMachine"

  resource_group_name_01 = "dev-resouece-group"
  location               = "uksouth"
  storageaccountname     = "devsa20241111"
  tags = {
      Environment = "Development"
      Project     = "Terrfaform"
  }
  virtual_network_name    = "dev-vnet"
  virtual_network_address = ["10.0.0.0/24"]
  subnet_name             = "dev-snet"
  subnet_address          = ["10.0.0.0/24"]
  pip_name                = "dev-pip"
  nic_name                = "dev-nic"
  nsg_name                = "dev-nsg"
  virtual_machine_name    = "dev-vm"
  virtual_machine_size    = "Standard_Ds1_v2"
  adminUser               = "azureuser"
  adminPassword           = "Azuredevops@12345"
}