resource "azurerm_linux_function_app" "queue_processor" {
  name                = "func-${var.project}-${var.enviroment}-dv"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name

  storage_account_name       = data.azurerm_storage_account.saccount.name
  storage_account_access_key = data.azurerm_storage_account.saccount.primary_access_key
  service_plan_id            = azurerm_service_plan.frontoffice_sp.id

  site_config {
    always_on = true
  }

  tags = var.tags
}
