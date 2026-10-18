terraform {
    required_providers {
        azurearm = {
            source = "hashicorp/azurearm"
            version = "~> 5.0"
        }
    }
}

provider "azurearm" {
    features {}
    use_oidc = true
}