terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

/*
terraform {
  backend "azurerm" {
    resource_group_name  = "arsh_rg"
    storage_account_name = "arsh1210"               # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "arsh"                # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
*/

provider "azurerm" {
  features {}
  subscription_id = "c64cf66f-900c-4cad-b6cd-ee68a9839e8a"
}
