provider "azurerm" {
  subscription_id = env("ARM_SUBSCRIPTION_ID")
  client_id       = env("ARM_CLIENT_ID")
  client_secret   = env("ARM_CLIENT_SECRET")
  tenant_id       = env("ARM_TENANT_ID")
}

resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
}
