resource "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  address_space       = var.ip-addrs_virtual_network
  location            = var.location
  resource_group_name = var.rgname
}

resource "azurerm_subnet" "this" {
  name                 = var.subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.rgname
  address_prefixes     = var.subnet_ip_prefix
}

resource "azurerm_public_ip" "this" {
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.rgname
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "this" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.rgname

  ip_configuration {
    name                          = var.network_interface_ip_configuration
    subnet_id                     = azurerm_subnet.this.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.this.id
  }
}

