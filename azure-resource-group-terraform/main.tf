resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "dev"
    owner       = "muhammad"
    costcentre  = "cloud-learning"
  }
}