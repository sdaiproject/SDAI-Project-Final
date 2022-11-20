//-------------------Log analytics workspace variables for storing logs---------------

variable "log_analytics_name" {
    type =string
    description ="log analytics name"
}

variable "resource_group_name" {
    type =string
    description ="log analytics resource group name"
}

variable "location" {
    type =string
    description ="log analytics location"
}

variable "sku" {
    type =string
    description ="log analytics sku"
}
