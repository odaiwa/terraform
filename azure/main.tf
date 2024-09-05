terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "2.53.1"
    }
  }
}

resource "azuread_user" "example" {
  user_principal_name = "tf@${var.haat_delivery}"
  display_name        = "terraform user"
  password            = "Th1s1Saver7R1ndomP@assW@rdF0rTh3U$er1"
  account_enabled     = true
}