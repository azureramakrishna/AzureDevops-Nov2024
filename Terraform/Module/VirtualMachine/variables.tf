variable "resource_group_name_01" {
  type    = string
}

variable "location" {
  type    = string
}

variable "storageaccountname" {
  type    = string
}

variable "tags" {
  type = map(string)
}

variable "virtual_network_name" {
  type    = string
}

variable "virtual_network_address" {
  type    = list(string)
}

variable "subnet_name" {
  type    = string
}

variable "subnet_address" {
  type    = list(string)
}

variable "pip_name" {
  type    = string
}

variable "nic_name" {
  type    = string
}

variable "nsg_name" {
  type    = string
}

variable "virtual_machine_name" {
  type    = string
}

variable "virtual_machine_size" {
  type    = string
}

variable "adminUser" {
  type    = string
}

variable "adminPassword" {
  type = string
}