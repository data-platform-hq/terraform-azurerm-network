variable "vnet_name" {
  type        = string
  description = "Given name to virtual network"
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
