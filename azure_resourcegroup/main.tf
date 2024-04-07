terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}
resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
}
