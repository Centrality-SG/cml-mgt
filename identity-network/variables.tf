variable "location" {
  type    = string
  default = "uksouth"
}

variable "resource_group_name" {
  type    = string
  default = "rg-identity-network"
}

variable "vnet_name" {
  type    = string
  default = "vnet-identity-uks"
}

variable "address_space" {
  type    = list(string)
  default = ["10.101.0.0/16"]
}
