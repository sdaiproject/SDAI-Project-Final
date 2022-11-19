//--------------------------------Storage Account variable names----------------------------------
variable "storageaccount_name" {
    default="storageaccountsdai"
    type =string
    description ="storage account name"
}

variable "resource_group_name" {
    default="SDAI-ResourceGroup"
    type =string
    description ="storage account resource group name"
}

variable "location" {
    default="East US"
    type =string
    description ="storage account location"
}

variable "acc_tier" {
    default="Standard"
    type =string
    description ="storage account tier name"
}

variable "replc_type" {
    default="GRS"
    type =string
    description ="replication type name"
}

variable "tag" {
    default="SDAI-Project"
    type =string
    description ="tag name"
}


//--------------------------------Logic app variable names----------------------------------

variable "logicapp_name" {
    default="sdaiworkflow"
    type =string
    description ="logic app name"
}

//--------------------------------Log analytics variable names----------------------------------

variable "log_analytics_name" {
    type =string
    default="loganalyticssdai"
    description ="log analytics name"
}

variable "sku" {
    type =string
    default="PerGB2018"
    description ="sku of log analytics"
}

//--------------------------------Data Factory variable names----------------------------------

variable "data_factory_name" {
    type =string
    default="datafactorysdai"
    description ="data factory name"
}

//--------------------------------SQL database variable names----------------------------------

variable "sqlserver_name" {
    type =string
    default="sdaisqlserver"
    description ="sql server name"
}
/*
variable "version" {
    type =string
    default="12.0"
    description ="sql server version"
}
*/
variable "username" {
    type =string
    default="sdaisqlserver"
    description ="sql server username"
}

variable "password" {
    type =string
    default="sdaisqlserver@123"
    description ="sql server password"
}

variable "tags" {
    type =string
    default="SDAI project"
    description ="tags"
}

variable "storage_account" {
    type =string
    default="sdaistoaccsdai"
    description ="storage account name"
}

variable "account_tier" {
    type =string
    default="Standard"
    description ="storage account account tier"
}

variable "sql_database_name" {
    type =string
    default="sdaisqldatabase"
    description ="sql database name"
}

variable "secondary_key_boolean" {
    type =string
    default="true"
    description ="secondary key enabled or not"
}
variable "retention_days" {
    type =string
    default="9"
    description ="number of retention days"
}

