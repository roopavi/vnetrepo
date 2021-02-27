resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.rglocation
  tags = {
    env = " production "
  }
}
resource "azurerm_virtual_network" "example" {
  name                = var.vnet
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["15.0.0.0/16"]

  subnet {
    name           = var.s1
    address_prefix = "15.0.1.0/24"
  }

  subnet {
    name           = var.s2
    address_prefix = "15.0.2.0/24"
  }

  subnet {
    name           = var.s3
    address_prefix = "15.0.3.0/24"

  }

  tags = {
    environment = "Production"
  }
}