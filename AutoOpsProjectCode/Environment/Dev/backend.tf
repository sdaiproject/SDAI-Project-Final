//------------------backed to store state of all the azure services

terraform {
    backend "azurerm" {
        resource_group_name ="state"
        storage_account_name ="storagestatetf"
        container_name ="blob"
        key = "state.json"
    }
}