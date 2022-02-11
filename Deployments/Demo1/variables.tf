# For Resource Names - Changing this forces a new resource to be created.
variable "environment" {
  description = "The Environment where the infrastructure will be deployed."
  default     = "np"
}

# General
variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create resources. Changing this forces a new resource."
  default = "Demo1"
}

variable "location" {
  description = "The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "eastus2"
}

variable "application_name" {
  description = "This is the application name used in the nameing of resources. Changing this forces a new resource."
  default     = "app"
}

variable "microsoft_image" {
  default = false
}

# Tags
variable "tags" {
  type = map(string)
  default = {
    "OwnerName"    = "JP"
    "Department"   = "IT"
    "Project"      = "Test"
    "Environment"  = "NonProd"
    "ContactName"  = "JP"
    "ContactEmail" = "jp.perez@microsoft.com"
  }
}

# Subnet delegation names and actions

locals {

  delegation_apimanagement_service                 = "Microsoft.ApiManagement/service"
  delegation_azurecosmosdb_clusters                = "Microsoft.AzureCosmosDB/clusters"
  delegation_baremetal_azurevmware                 = "Microsoft.BareMetal/AzureVMware"
  delegation_baremetal_crayservers                 = "Microsoft.BareMetal/CrayServers"
  delegation_batch_batchaccounts                   = "Microsoft.Batch/batchAccounts"
  delegation_containerinstance_containergroups     = "Microsoft.ContainerInstance/containerGroups"
  delegation_containerservice_managedclusters      = "Microsoft.ContainerService/managedClusters"
  delegation_databricks_workspaces                 = "Microsoft.Databricks/workspaces"
  delegation_dbformysql_flexibleservers            = "Microsoft.DBforMySQL/flexibleServers"
  delegation_dbformysql_serversv2                  = "Microsoft.DBforMySQL/serversv2"
  delegation_dbforpostgresql_flexibleservers       = "Microsoft.DBforPostgreSQL/flexibleServers"
  delegation_dbforpostgresql_serversv2             = "Microsoft.DBforPostgreSQL/serversv2"
  delegation_dbforpostgresql_singleservers         = "Microsoft.DBforPostgreSQL/singleServers"
  delegation_hardwaresecuritymodules_dedicatedhsms = "Microsoft.HardwareSecurityModules/dedicatedHSMs"
  delegation_kusto_clusters                        = "Microsoft.Kusto/clusters"
  delegation_logic_integrationserviceenvironments  = "Microsoft.Logic/integrationServiceEnvironments"
  delegation_machinelearningservices_workspaces    = "Microsoft.MachineLearningServices/workspaces"
  delegation_netapp_volumes                        = "Microsoft.Netapp/volumes"
  delegation_network_managedresolvers              = "Microsoft.Network/managedResolvers"
  delegation_powerplatform_vnetaccesslinks         = "Microsoft.PowerPlatform/vnetaccesslinks"
  delegation_servicefabricmesh_networks            = "Microsoft.ServiceFabricMesh/networks"
  delegation_sql_managedinstances                  = "Microsoft.Sql/managedInstances"
  delegation_sql_servers                           = "Microsoft.Sql/servers"
  delegation_streamanalytics_streamingjobs         = "Microsoft.StreamAnalytics/streamingJobs"
  delegation_synapse_workspaces                    = "Microsoft.Synapse/workspaces"
  delegation_web_hostingenvironments               = "Microsoft.Web/hostingEnvironments"
  delegation_web_serverfarms                       = "Microsoft.Web/serverFarms"

}