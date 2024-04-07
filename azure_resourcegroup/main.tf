resource "azurerm_resource_group" "this" {
  name     = var.rgname
  location = var.location
tags = {
"Application" = var.application
}
}

