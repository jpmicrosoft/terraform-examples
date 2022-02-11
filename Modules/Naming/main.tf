###### CAF = https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming
###### Naming rules and restrictions for Azure resources https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules

locals {

# General

resource_group	 = 	"rg"	# Microsoft.Resources/resourceGroups

# RBAC and Accounts

automation_account	 = 	"aa"	# Microsoft.Automation/automationAccounts
managed_identity	 = 	"id"	# Microsoft.ManagedIdentity/userAssignedIdentities

# Data

azure_data_factory	 = 	"adf"	# Microsoft.DataFactory/factories
azure_stream_analytics	 = 	"asa"	# Microsoft.StreamAnalytics/cluster
azure_cosmos_db_database	 = 	"cosmos"	# Microsoft.DocumentDB/databaseAccounts/sqlDatabases
azure_cosmos_db_clusters = "cosmoscl" # Microsoft.AzureCosmosDB/clusters
azure_databricks_workspace	 = 	"dbw"	# Microsoft.Databricks/workspaces
azure_data_explorer_cluster	 = 	"dec"	# Microsoft.Kusto/clusters
azure_data_explorer_cluster_database	 = 	"dedb"	# Microsoft.Kusto/cl
database_migration_service_instance	 = 	"dms"	# Microsoft.DataMigration/services
hdinsight_-_hadoop_cluster	 = 	"hadoop"	# Microsoft.HDInsight/clusters
hdinsight_-_hbase_cluster	 = 	"hbase"	# Microsoft.HDInsight/clusters
hdinsight_-_kafka_cluster	 = 	"kafka"	# Microsoft.HDInsight/clusters
mysql_database	 = 	"mysql"	# Microsoft.DBforMySQL/servers
power_bi_embedded	 = 	"pbi"	# Microsoft.PowerBIDedicated/capacities
postgresql_database	 = 	"psql"	# Microsoft.DBforPostgreSQL/servers
azure_purview_instance	 = 	"pview"	# Microsoft.Purview/accounts
hdinsight_-_spark_cluster	 = 	"spark"	# Microsoft.HDInsight/clusters
azure_sql_database_server	 = 	"sql"	# Microsoft.Sql/servers
azure_sql_database	 = 	"sqldb"	# Microsoft.Sql/servers/databases
sql_managed_instance	 = 	"sqlmi"	# Microsoft.Sql/managedInstances
sql_server_stretch_database	 = 	"sqlstrdb"	# Microsoft.Sql/servers/databases
hdinsight_-_storm_cluster	 = 	"storm"	# Microsoft.HDInsight/clusters
azure_synapse_analytics	 = 	"syn"	# Microsoft.Synapse/workspaces
azure_synapse_analytics_sql_dedicated_pool	 = 	"syndp"	# Microsoft.Synapse/workspaces/sqlPools
azure_synapse_analytics_spark_pool	 = 	"synsp"	# Microsoft.Synapse/workspaces/sqlPools
azure_synapse_analytics_workspaces	 = 	"synw"	# Microsoft.Synapse/workspaces
time_series_insights_environment	 = 	"tsi"	# Microsoft.TimeSeriesInsights/environments

# Networking

application_gateway	 = 	"agw"	# Microsoft.Network/applicationGateways
firewall	 = 	"afw"	# Microsoft.Network/azureFirewalls
firewall_policy	 = 	"afwp"	# Microsoft.Network/firewallPolicies
connections	 = 	"con"	# Microsoft.Network/connections
dns	 = 	"dnsz"	# Microsoft.Network/dnsZones
expressroute_circuit	 = 	"erc"	# Microsoft.Network/expressRouteCircuits
public_ip_address_prefix	 = 	"ippre"	# Microsoft.Network/publicIPPrefixes
load_balancer_external	 = 	"lbe"	# Microsoft.Network/loadBalancers
load_balancer_internal	 = 	"lbi"	# Microsoft.Network/loadBalancers
local_network_gateway	 = 	"lgw"	# Microsoft.Network/localNetworkGateways
nat_gateway	 = 	"ng"	# Microsoft.Network/natGateways
network_interface_nic	 = 	"nic"	# Microsoft.Network/networkInterfaces
network_security_group_nsg	 = 	"nsg"	# Microsoft.Network/networkSecurityGroups
network_security_group_nsg_security_rules	 = 	"nsgsr"	# Microsoft.Network/networkSecurityGroups/securityRules
network_watcher	 = 	"nw"	# Microsoft.Network/networkWatchers
private_dns_zone	 = 	"pdnsz"	# Microsoft.Network/privateDnsZones
virtual_network_peering	 = 	"peer"	# Microsoft.Network/virtualNetworks/virtualNetworkPeerings
public_ip_address	 = 	"pip"	# Microsoft.Network/publicIPAddresses
private_link	 = 	"pl"	# Microsoft.Network/privateLinkServices
route_filter	 = 	"rf"	# Microsoft.Network/routeFilters
route_table	 = 	"rt"	# Microsoft.Network/routeTables
load_balancer_rule	 = 	"rule"	# Microsoft.Network/loadBalancers/inboundNatRules
service_endpoint	 = 	"se"	# Microsoft.serviceEndPointPolicies
virtual_network_subnet	 = 	"snet"	# Microsoft.Network/virtualNetworks/subnets
user_defined_route_udr	 = 	"udr"	# Microsoft.Network/routeTables/routes
vpn_connection	 = 	"vcn"	# Microsoft.Network/vpnGateways/vpnConnections
traffic_manager_profile	 = 	"traf"	# Microsoft.Network/trafficManagerProfiles
virtual_network_gateway	 = 	"vgw"	# Microsoft.Network/virtualNetworkGateways
virtual_network	 = 	"vnet"	# Microsoft.Network/virtualNetworks
vpn_gateway	 = 	"vpng"	# Microsoft.Network/vpnGateways
vpn_site	 = 	"vst"	# Microsoft.Network/vpnGateways/vpnSites
virtual_wan	 = 	"vwan"	# Microsoft.Network/virtualWans
web_application_firewall_waf_policy	 = 	"waf"	# Microsoft.Network/firewallPolicies
web_application_firewall_waf_policy_rule_group	 = 	"wafrg"	# Microsoft.Network/firewallPolicies/ruleGroups
private_endpoint = "pe"

# Logging and Analysis

azure_monitor_action_group	 = 	"ag"	# Microsoft.Insights/actionGroups
application_insights	 = 	"appi"	# Microsoft.Insights/components
azure_analysis_services_server	 = 	"as"	# Microsoft.AnalysisServices/servers
log_analytics_workspace	 = 	"log"	# Microsoft.OperationalInsights/workspaces

# AKS and Containers

aks_cluster	 = 	"aks"	# Microsoft.ContainerService/managedClusters
azure_arc_enabled_kubernetes_cluster	 = 	"arck"	# Microsoft.Kubernetes/connectedClusters
container_instance	 = 	"ci"	# Microsoft.ContainerInstance/containerGroups
container_registry	 = 	"cr"	# Microsoft.ContainerRegistry/registries

# Web and Apps

api_management_service_instance	 = 	"apim"	# Microsoft.ApiManagement/service
web_app	 = 	"app"	# Microsoft.Web/sites
app_configuration_store	 = 	"appcs"	# Microsoft.AppConfiguration/configurationStores
app_service_environment	 = 	"ase"	# Microsoft.Web/sites
function_app	 = 	"func"	# Microsoft.Web/sites
logic_apps	 = 	"logic"	# Microsoft.Logic/workflows
app_service_plan	 = 	"plan"	# Microsoft.Web/serverFarms
static_web_app	 = 	"stapp"	# Microsoft.Web/staticSites

# Other

azure_arc_enabled_server	 = 	"arcs"	# Microsoft.HybridCompute/machines
batch_accounts = "ba" # Microsoft.Batch/batchAccounts
management_group	 = 	"mg"	# Microsoft.Management/managementGroups
azure_migrate_project	 = 	"migr"	# Microsoft.Migrate/assessmentProjects
notification_hubs	 = 	"ntf"	# Microsoft.NotificationHubs/namespaces/notificationHubs
notification_hubs_namespace	 = 	"ntfns"	# Microsoft.NotificationHubs/namespaces
service_fabric_cluster	 = 	"sf"	# Microsoft.ServiceFabric/clusters
signalr	 = 	"sigr"	# Microsoft.SignalRService/SignalR

# Security

application_security_group_asg	 = 	"asg"	# Microsoft.Network/applicationSecurityGroups
key_vault	 = 	"kv"	# Microsoft.KeyVault/vaults
provisioning_services_certificate	 = 	"pcert"	# Microsoft.Devices/provisioningServices/certificates
policy_definition	 = 	"policy"	# Microsoft.Authorization/policyDefinitions
provisioning_services	 = 	"provs"	# Microsoft.Devices/provisioningServices

# Compute

availability_set	 = 	"avail"	# Microsoft.Compute/availabilitySets
bastion	 = 	"bas"	# Microsoft.Network/bastionHosts
blueprint	 = 	"bp"	# Microsoft.Blueprint/blueprints
blueprint_assignment	 = 	"bpa"	# Microsoft.Blueprint/blueprints/artifacts
disk_encryption_set	 = 	"des"	# Microsoft.Compute/diskEncryptionSets
managed_disk_data	 = 	"disk"	# Microsoft.Compute/disks
gallery	 = 	"gal"	# Microsoft.Compute/galleries
managed_disk_os	 = 	"osdisk"	# Microsoft.Compute/disks
virtual_desktop_application_group	 = 	"vdag"	# null
virtual_desktop_host_pool	 = 	"vdpool"	# null
virtual_desktop_workspace	 = 	"vdws"	# null
virtual_machine	 = 	"vm"	# Microsoft.Compute/virtualMachines
virtual_machine_scale_set	 = 	"vmss"	# Microsoft.Compute/virtualMachineScaleSets
snapshot	 = 	"snap"	# Microsoft.Compute/snapshots
cloud_service	 = 	"cld"	# Microsoft.Compute/cloudServices

# Content

cdn_endpoint	 = 	"cdne"	# Microsoft.Cdn/profiles/endpoints
cdn_profile	 = 	"cdnp"	# Microsoft.Cdn/profiles

# Cognitive Services

azure_cognitive_services	 = 	"cog"	# Microsoft.CognitiveServices/accounts
azure_cognitive_search	 = 	"srch"	# Microsoft.Search/searchServices

# Storage

data_lake_analytics_account	 = 	"dla"	# Microsoft.DataLakeAnalytics/accounts
data_lake_store_account	 = 	"dls"	# Microsoft.DataLakeStore/accounts
azure_storsimple	 = 	"ssimp"	# Microsoft.StorSimple/managers
storage_account	 = 	"st"	# Microsoft.Storage/storageAccounts
vm_storage_account	 = 	"stvm"	# Microsoft.Storage/storageAccounts

# Interoperability

event_grid_domain	 = 	"evgd"	# Microsoft.EventGrid/domains
event_grid_subscriptions	 = 	"evgs"	# Microsoft.EventGrid/eventSubscriptions
event_grid_topic	 = 	"evgt"	# Microsoft.EventGrid/domains/topics
event_hub	 = 	"evh"	# Microsoft.EventHub/namespaces/eventHubs
event_hubs_namespace	 = 	"evhns"	# Microsoft.EventHub/namespaces
front_door_instance	 = 	"fd"	# Microsoft.Network/frontDoors
front_door_firewall_policy	 = 	"fdfp"	# Microsoft.Network/frontdoorWebApplicationFirewallPolicies
integration_account	 = 	"ia"	# Microsoft.Logic/integrationAccounts

# IoT

iot_hub	 = 	"iot"	# Microsoft.Devices/IotHubs

# Machine Learning

hdinsight_-_ml_services_cluster	 = 	"mls"	# Microsoft.HDInsight/clusters
azure_machine_learning_workspace	 = 	"mlw"	# Microsoft.MachineLearningServices/workspaces

# Back Up and Recovery

recovery_services_vault	 = 	"rsv"	# Microsoft.RecoveryServices/vaults
azure_cache_for_redis_instance	 = 	"redis"	# Microsoft.Cache/Redis

# ServiceBus

service_bus	 = 	"sb"	# Microsoft.ServiceBus/namespaces
service_bus_queue	 = 	"sbq"	# Microsoft.ServiceBus/namespaces/queues
service_bus_topic	 = 	"sbt"	# Microsoft.ServiceBus/namespaces/topics

}