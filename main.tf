terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.73.0"
    }
  }
}
module aci {
   source = "git::https://github.com/Samaysinghai/repofortf.git"  
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mytfRG" {
  name     = "mytfRG"
  location = "East US"  
}

