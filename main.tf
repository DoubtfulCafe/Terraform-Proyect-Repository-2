provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

data "azurerm_resource_group" "resource_group" {
  name = "rg-${var.project}-${var.enviroment}"
}

data "azurerm_storage_account" "saccount" {
  name                = "sa${var.project}${var.enviroment}"
  resource_group_name = data.azurerm_resource_group.resource_group.name
}
