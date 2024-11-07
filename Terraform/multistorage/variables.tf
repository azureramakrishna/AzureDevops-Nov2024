variable "resource_group_name" {
  type    = string
  default = "terraform-resource-group"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storageaccountname" {
  type    = string
  default = "saanvikittf"
}

variable "tags" {
  type = map(string)
  default = {
    "Project"     = "SAANVIK IT"
    "Environment" = "Development"
  }
}

variable "count_value" {
  type    = number
  default = 50
}