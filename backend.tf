terraform {
  backend "azurearm" {
    storage_account_name = "smjpractice"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
    use_oidc             = true
  }

}
