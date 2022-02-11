terraform {
  required_version = ">=1.1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.94.0"
    }
  }
}
provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

data "azurerm_client_config" "current" {
}

resource "random_string" "random" {
  length  = 4
  special = false
  lower   = true
  upper   = false
  number  = true
}

resource "random_password" "password" {
  length      = 16
  min_numeric = 2
  min_upper   = 1
  min_special = 3
  special     = true
}