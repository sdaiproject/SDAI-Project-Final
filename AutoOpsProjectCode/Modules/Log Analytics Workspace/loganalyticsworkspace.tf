resource "azurerm_log_analytics_workspace" "tf_log_analytics_workspace" {
  name                = var.log_analytics_name          
  location            = var.location                 
  resource_group_name = var.resource_group_name          
  sku                 = var.sku           
  retention_in_days   = 30
}