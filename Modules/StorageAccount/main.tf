resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  min_tls_version          = var.min_tls_version
  tags                     = var.tags

  blob_properties {
    cors_rule {
      allowed_headers    = ["*"]
      allowed_methods    = ["DELETE", "GET", "HEAD", "MERGE", "POST", "OPTIONS", "PUT", "PATCH"]
      allowed_origins    = var.allowed_origins
      exposed_headers    = ["*"]
      max_age_in_seconds = 200
    }
  }

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

# Network rules
module "storage_account_network_rules" {
  source                     = "../../Modules/StorageAccountNetworkRules/"
  /* resource_group_name        = var.resource_group_name */
  storage_account_id         = azurerm_storage_account.storageaccount.id
  /* storage_account_name       = azurerm_storage_account.storageaccount.name */
  default_action             = var.default_action
  ip_rules                   = var.network_rules_ip_rules
  virtual_network_subnet_ids = var.network_rules_virtual_network_subnet_ids
  bypass                     = var.network_rules_bypass
  depends_on                 = [azurerm_storage_account.storageaccount]
}