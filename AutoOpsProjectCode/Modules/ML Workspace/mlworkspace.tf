provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

resource "azurerm_application_insights" "tf_application_insights" {
  name                = "sdaiapplicationinsight"
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}

resource "azurerm_key_vault" "tf_key_vault" {
  name                = "workspacemlsdaikeyvault"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "premium"
}

resource "azurerm_storage_account" "tf_storage_account_ml" {
  name                     = "workspacesaccsdai"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_machine_learning_workspace" "example" {
  name                    = "sdaimlworkspace"
  location                = var.location
  resource_group_name     = var.resource_group_name
  application_insights_id = azurerm_application_insights.tf_application_insights.id
  key_vault_id            = azurerm_key_vault.tf_key_vault.id
  storage_account_id      = azurerm_storage_account.tf_storage_account_ml.id

  identity {
    type = "SystemAssigned"
  }
}