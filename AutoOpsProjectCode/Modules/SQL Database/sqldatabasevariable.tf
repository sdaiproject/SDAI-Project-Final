//---------------------SQL database variables----------------

variable "sqlserver_name" {
    type =string
    description ="sql server name"
}

variable "resource_group_name" {
    type =string
    description ="logic app resource group name"
}

variable "location" {
    type =string
    description ="logic app location"
}
variable "version" {
    type =string
    description ="sql server version"
}

variable "username" {
    type =string
    description ="sql server username"
}

variable "password" {
    type =string
    description ="sql server password"
}

variable "tags" {
    type =string
    description ="tags"
}

variable "storage_account" {
    type =string
    description ="storage account name"
}

variable "account_tier" {
    type =string
    description ="storage account account tier"
}
variable "acc_tier" {
    type =string
    description ="storage account account tier"
}

variable "sql_database_name" {
    type =string
    description ="sql database name"
}

variable "secondary_key_boolean" {
    type =string
    description ="secondary key enabled or not"
}
variable "retention_days" {
    type =string
    description ="number of retention days"
}

