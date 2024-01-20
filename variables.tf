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

variable "enable_diagnostic_setting" {
  type        = bool
  description = "Enable diagnostic setting. var.analytics_workspace_id must be provided"
  default     = false
}

variable "diagnostic_settings_name" {
  type        = string
  description = "Specifies the name of the Diagnostic Setting"
  default     = null
}

variable "analytics_workspace_id" {
  type        = string
  description = "Resource ID of Log Analytics Workspace"
  default     = null
}

variable "analytics_destination_type" {
  type        = string
  description = "Possible values are AzureDiagnostics and Dedicated."
  default     = "Dedicated"
}
