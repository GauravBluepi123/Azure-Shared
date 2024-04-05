provider "azurerm" {
  subscription_id = var.TF_VAR_ARM_SUBSCRIPTION_ID
  client_id       = var.TF_VAR_ARM_CLIENT_ID
  client_secret   = var.TF_VAR_ARM_CLIENT_SECRET
  tenant_id       = var.TF_VAR_ARM_TENANT_ID
}

resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
}
