terraform {
  backend "azurerm" {
    subscription_id      = "991f70c7-b1e0-4d81-af95-e7df19fcad8b"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    storage_account_name = "staginghaat"
    resource_group_name  = "Backend_Staging"
  }
}