resource "azurerm_storage_account" "tf_storage_account" {
  name                     = var.storageaccount_name 
  resource_group_name      = var.resource_group_name    
  location                 = var.location     
  account_tier             = var.acc_tier   
  account_replication_type = var.replc_type 

  tags = {
    environment = var.tag          
  }
}

//----------------Storage Account Containers-----------------

resource "azurerm_storage_container" "tf_container_1" {
  name                  = "input"
  storage_account_name  = azurerm_storage_account.tf_storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "tf_container_2" {
  name                  = "output"
  storage_account_name  = azurerm_storage_account.tf_storage_account.name
  container_access_type = "private"
}