resource "azurerm_container_registry" "acr" {
  name = "acr${lower(var.project)}${var.enviroment}dv"
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location = var.location
  sku = "Basic"
  admin_enabled = true
  tags = var.tags
}
