//--------------------------------------Storage Account module------------------------------------
module "StorageAccount" {
    source                    = "..//..//Modules//Storage Account"
    storageaccount_name       = var.storageaccount_name
    resource_group_name       = var.resource_group_name
    location                  = var.location
    acc_tier                  = var.acc_tier
    replc_type                = var.replc_type
    tag                       = var.tag
}
//--------------------------------------Log analytics workspace module-----------------------------
module "LogAnalyticsWorkspace" {
    source                    = "..//..//Modules//Log Analytics Workspace"
    log_analytics_name        = var.log_analytics_name
    sku                       = var.sku
    resource_group_name       = var.resource_group_name
    location                  = var.location
}
//--------------------------------------Data factory module-----------------------------------------
module "DataFactory" {
    source = "..//..//Modules//Data Factory"
    data_factory_name         = var.data_factory_name
    resource_group_name       = var.resource_group_name
    location                  = var.location
}
//--------------------------------------Logic App module--------------------------------------------
module "LogicApp" {
    source = "..//..//Modules//Logic App"
    logicapp_name             = var.logicapp_name
    location                  = var.location
    resource_group_name       = var.resource_group_name
}
//--------------------------------------SQL Database module------------------------------------------
/*
module "SqlDatabase" {
    source = "..//..//Modules//SQL Database"
    sqlserver_name             = var.sqlserver_name
    location                   = var.location
    resource_group_name        = var.resource_group_name
    username                   = var.username
    password                   = var.password
    tags                       = var.tags
    storage_account            = var.storage_account
    account_tier               = var.account_tier
    acc_tier                   = var.acc_tier
    sql_database_name          = var.sql_database_name
    secondary_key_boolean      = var.secondary_key_boolean
    retention_days             = var.retention_days
    version                    = var.version
}
*/
//--------------------------------------ML workspace module--------------------------------------------

module "MLWorkspace" {
    source = "..//..//Modules//ML Workspace"
    location                  = var.location
    resource_group_name       = var.resource_group_name
}