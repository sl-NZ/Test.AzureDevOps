# The (fictional) Timely Azure Web App

resource "azurerm_resource_group" "rg_timely_supplier" {
  name     = "RG-TIMELY-SUPPLIER"
  location = "West US"
}

# The App Service plan
resource "azurerm_app_service_plan" "appserviceplan_supplier" {
  name                = "timely-internal-apps"
  resource_group_name = azurerm_resource_group.rg_timely_supplier.name
  location            = azurerm_resource_group.rg_timely_supplier.location

  sku {
    tier     = "Standard"
    size     = "S1"
    capacity = "1"
  }
}

resource "azurerm_app_service" "app_supplier_prod" {
  name                = "timely-supplier"
  resource_group_name = azurerm_resource_group.rg_timely_supplier.name
  location            = azurerm_resource_group.rg_timely_supplier.location
  app_service_plan_id = azurerm_app_service_plan.appserviceplan_supplier.id

  https_only = true

}

resource "azurerm_app_service" "app_supplier_api_prod" {
  name                = "timely-supplier-api"
  resource_group_name = azurerm_resource_group.rg_timely_supplier.name
  location            = azurerm_resource_group.rg_timely_supplier.location
  app_service_plan_id = azurerm_app_service_plan.appserviceplan_supplier.id

  https_only = true

  auth_settings {
    enabled         = true
    runtime_version = "2.2"
  }

}
