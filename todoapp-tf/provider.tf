// providers.tf
terraform {
  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name   = "durandhar-rg"
    storage_account_name  = "dhurandharstg12"   # must be globally unique
    container_name        = "dhurandharblob"
    key                   = "app-demo.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a46e2f32-e4a1-44bf-946c-f3fa4a273aa1"
  resource_provider_registrations = "none"
}

provider "random" {}


