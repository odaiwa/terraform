variable "storage_account_name" {
  type        = string
  description = "The name of the Azure storage account to store the state."
}


variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the storage account is located."
}

variable "subscription_id" {
  type        = string
  description = "Your Azure subscription ID."
}


variable "tenant_id" {
  type        = string
  description = "Your Azure tenant ID."
}

variable "haat_delivery" {
  type        = string
  description = "haat email extention."
}