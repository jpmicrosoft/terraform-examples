data "azurerm_client_config" "current" {
}

resource "azurerm_key_vault" "keyvault" {
  name                            = "${var.azurerm_key_vault_name}"
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  tags                            = var.tags
  enabled_for_disk_encryption     = true
  purge_protection_enabled        = true
  enable_rbac_authorization       = true
  soft_delete_retention_days      = 7
  sku_name                        = "standard"
  enabled_for_template_deployment = var.enabled_for_template_deployment
  enabled_for_deployment          = var.enabled_for_deployment

  lifecycle {
    ignore_changes = [
      tags
    ]
  }

  network_acls {
    default_action             = var.default_action
    bypass                     = var.bypass
    ip_rules                   = var.ip_rules
    virtual_network_subnet_ids = var.virtual_network_subnet_ids
  }
}


module "diagnostic_logs" {
  source             = "../../Modules/DiagnosticLogs/"
  diagnostic_logs_name = "${azurerm_key_vault.keyvault.name}-diag"
  target_resource_id = azurerm_key_vault.keyvault.id
  storage_account_id = var.storage_account_id
}