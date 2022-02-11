output "name" {
  description = "The name of the resoruce created."
  value       = azurerm_storage_account.storageaccount.name
}

output "id" {
  description = "The id of the resource created."
  value       = azurerm_storage_account.storageaccount.id
  sensitive   = true
}

output "primary_connection_string" {
  description = "The primary connection string of the storage account created."
  value       = azurerm_storage_account.storageaccount.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The secondary connection string of the storage account created."
  value       = azurerm_storage_account.storageaccount.secondary_connection_string
  sensitive   = true
}

output "primary_access_key" {
  description = "The primary access key of the storage account created."
  value       = azurerm_storage_account.storageaccount.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The secondary access key of the storage account created."
  value       = azurerm_storage_account.storageaccount.secondary_access_key
  sensitive   = true
}

output "primary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the primary location."
  value       = azurerm_storage_account.storageaccount.primary_dfs_endpoint
  sensitive   = true
}
output "secondary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the secondary location."
  value       = azurerm_storage_account.storageaccount.secondary_dfs_endpoint
  sensitive   = true
}