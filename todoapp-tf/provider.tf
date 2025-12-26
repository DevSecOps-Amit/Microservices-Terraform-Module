// providers.tf
terraform {
  required_version = ">= 1.1.0"

  backend "azurerm" {
    resource_group_name   = "gabbar"
    storage_account_name  = "gabbarstg"   # must be globally unique
    container_name        = "gabbar"
    key                   = "todoapp-demo.tfstate"
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


