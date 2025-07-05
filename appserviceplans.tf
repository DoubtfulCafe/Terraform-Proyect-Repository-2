// Frontoffice App Service Plan
resource "azurerm_service_plan" "frontoffice_sp" {
  name                = "sp-front-${var.project}-${var.enviroment}"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
  tags                = var.tags
}

// Backoffice App Service Plan
resource "azurerm_service_plan" "backoffice_sp" {
  name                = "sp-back-${var.project}-${var.enviroment}"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  os_type             = "Linux"
  sku_name            = "B1"
  tags                = var.tags
}
