resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "identity_vnet" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "0.17.1"

  name                = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.address_space

  subnets = {
    snet_dc = {
      name             = "snet-dc"
      address_prefixes = ["10.40.1.0/24"]
    }
  }
}
