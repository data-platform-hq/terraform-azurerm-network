variable "project" {
  type        = string
  description = "Project name"
}

variable "env" {
  type        = string
  description = "Environment name"
}

variable "resource_group" {
  type        = string
  description = "The name of the resource group in which to create the storage account"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "cidr" {
  type        = list(string)
  description = "The address space that is used the virtual network. You can supply more than one address space."
}

variable "custom_vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = null
}

variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

variable "custom_dns" {
  type        = list(string)
  description = "List of IP Addresses of DNS servers. Manages the DNS servers associated with a virtual network."
  default     = []
}

variable "suffix" {
  type        = string
  description = "Optional suffix that would be added to the end of resources names."
  default     = ""
}
