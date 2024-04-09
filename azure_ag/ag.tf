resource "azurerm_monitor_action_group" "this" {
  name                = var.action_group_name
  resource_group_name = var.rgname
  short_name          = var.ag_short_name

  email_receiver {
    name          = "email"
    email_address = var.user_mail.id
  }
}
