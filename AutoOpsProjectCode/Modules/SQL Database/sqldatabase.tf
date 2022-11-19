resource "azurerm_sql_server" "tf_sql_server" {
  name                         = var.sqlserver_name    
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.version           
  administrator_login          = var.username           
  administrator_login_password = var.password           

  tags = {
    environment = var.tags
  }
}

resource "azurerm_storage_account" "tf_storage_account" {
  name                     = var.storage_account       
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier     
  account_replication_type = var.acc_tier           
}

resource "azurerm_sql_database" "tf_sql_database" {
  name                = var.sql_database_name       
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.tf_sql_server.name

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.tf_storage_account.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.tf_storage_account.primary_access_key
    storage_account_access_key_is_secondary = var.secondary_key_boolean   
    retention_in_days                       = var.retention_days             
  }



  tags = {
    environment = var.tags
  }
}