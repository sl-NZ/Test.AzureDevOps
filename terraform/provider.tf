terraform {
  required_version = ">= 0.12.6"

  # backend "azurerm" {
  #          resource_group_name  = "storage-account-rg"
  #          storage_account_name  = "terraform"
  #          container_name        = "terraform-container"
  #          key                   = "supplier.tfstate"
  #          access_key            = "enter your blob storage key here"
  # }
}

provider "azurerm" {
  version = ">= 1.38.0"
}