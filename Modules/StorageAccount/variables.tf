variable "storage_account_name" {
  description = "The Storage Account name."
}

variable "resource_group_name" {
  description = "The resource group name."
}
variable "location" {
  description = "The region were the resource will be deployed."
}

variable "account_tier" {
  description = " The access tier for the storage account."
  default     = "Standard"
}

variable "account_replication_type" {
  default = "LRS"
}

variable "min_tls_version" {
  default = "TLS1_2"
}

variable "allowed_origins" {
  default = ["*"]
}

variable "tags" {
}

# NOTE
# Explicitly set the values (ip_rules, virtual_network_subnet_ids, bypass) to empty slice ([]) to remove it.
# ip_rules and virtual_network_subnet_ids: At least one is required.

variable "network_rules_ip_rules" {
  description = "List of public IP or IP ranges in CIDR Format. Only IPV4 addresses are allowed. Private IP address ranges (as defined in RFC 1918) are not allowed."
  type        = list(string)
  default     = []
}

variable "network_rules_virtual_network_subnet_ids" {
  description = "A list of virtual network subnet ids to to secure the storage account."
  type        = list(string)
  default     = []
}

variable "network_rules_bypass" {
  description = "(Optional) Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Valid options are any combination of Logging, Metrics, AzureServices, or None."
  type        = list(string)
  default     = ["Metrics", "Logging", "AzureServices"]
}

variable "default_action" {
  description = "The default network access to the storage account."
  default = "Deny"
  
}