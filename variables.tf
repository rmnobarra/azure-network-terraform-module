variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address space of the virtual network."
  type        = list(string)
}

variable "location" {
  description = "Azure location where the virtual network will be created."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "subnets" {
  description = "List of subnets to create."
  type        = list(map(string))
}
