terraform {
  required_providers {
    azurearm = {
      source  = "hashicorp/azurearm"
      version = "1.14.6"
    }
  }
}

provider "azurearm" {
  features {}
  use_oidc = true
}