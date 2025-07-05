// Frontoffice UI Web App
resource "azurerm_linux_web_app" "front_ui" {
  name                = "ui-front-${var.project}-${var.enviroment}-dv"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.frontoffice_sp.id

  site_config {
    always_on = true
    application_stack {
      docker_registry_url = "https://index.docker.io"
      docker_image_name   = "nginx:latest"
    }
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }

  tags = var.tags
}

// Frontoffice API Web App
resource "azurerm_linux_web_app" "front_api" {
  name                = "api-front-${var.project}-${var.enviroment}-dv"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.frontoffice_sp.id

  site_config {
    always_on = true
    application_stack {
      docker_registry_url = "https://index.docker.io"
      docker_image_name   = "nginx:latest"
    }
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }

  tags = var.tags
}

// Backoffice UI Web App
resource "azurerm_linux_web_app" "back_ui" {
  name                = "ui-back-${var.project}-${var.enviroment}-dv"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.backoffice_sp.id

  site_config {
    always_on = true
    application_stack {
      docker_registry_url = "https://index.docker.io"
      docker_image_name   = "nginx:latest"
    }
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }

  tags = var.tags
}

// Backoffice API Web App
resource "azurerm_linux_web_app" "back_api" {
  name                = "api-back-${var.project}-${var.enviroment}-dv"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  service_plan_id     = azurerm_service_plan.backoffice_sp.id

  site_config {
    always_on = true
    application_stack {
      docker_registry_url = "https://index.docker.io"
      docker_image_name   = "nginx:latest"
    }
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }

  tags = var.tags
}
