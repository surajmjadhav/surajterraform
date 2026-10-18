terraform {
  required_providers {
    azurearm = {
      source  = "hashicorp/azurearm"
      version = "~> 4.0"
    }
  }
}

provider "azurearm" {
  features {}
  use_oidc = true
}