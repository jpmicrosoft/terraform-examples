# Get external IP for the source Terraform deployment machine.

data "http" "myip" {
  url = "https://diagnostic.opendns.com/myip"
}


module "virtualnetwork-0000" {
  source                       = "../../Modules/VirtualNetwork/"
  azurerm_virtual_network_name = "${module.naming.virtual_network}-${var.location}"
  location                     = var.location
  resource_group_name          = module.resourcegroup-0000.name
  address_space                = "10.0.0.0/16"
  dns_servers                  = "168.63.129.16"
  tags                         = var.tags
}

# Data Bricks Public Subnet

module "subnet-0000" {
  source                       = "../../Modules/Subnet/"
  azurerm_subnet_name          = "${module.naming.virtual_network_subnet}-${var.location}-pub"
  location                     = var.location
  resource_group_name          = module.resourcegroup-0000.name
  azurerm_virtual_network_name = module.virtualnetwork-0000.name
  address_prefixes             = "10.0.1.0/24"
  delegation                   = true
  delegation_friendly_name     = "databricks"
  delegation_name              = local.delegation_databricks_workspaces
  delegation_action            = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
  depends_on                   = [module.virtualnetwork-0000]
}

# Data Bricks Private Subnet

module "subnet-0001" {
  source                       = "../../Modules/Subnet/"
  azurerm_subnet_name          = "${module.naming.virtual_network_subnet}-${var.location}-priv"
  location                     = var.location
  resource_group_name          = module.resourcegroup-0000.name
  azurerm_virtual_network_name = module.virtualnetwork-0000.name
  address_prefixes             = "10.0.2.0/24"
  delegation                   = true
  delegation_friendly_name     = "databricks"
  delegation_name              = local.delegation_databricks_workspaces
  delegation_action            = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
  depends_on                   = [module.virtualnetwork-0000]
}

# Private Endpoint Subnet

module "subnet-0002" {
  source                                         = "../../Modules/Subnet/"
  azurerm_subnet_name                            = "${module.naming.virtual_network_subnet}-${var.location}-pe"
  location                                       = var.location
  resource_group_name                            = module.resourcegroup-0000.name
  azurerm_virtual_network_name                   = module.virtualnetwork-0000.name
  address_prefixes                               = "10.0.3.0/24"
  enforce_private_link_endpoint_network_policies = "true"
  depends_on                                     = [module.virtualnetwork-0000]
}

# SQL MI Subnet

module "subnet-0003" {
  source                       = "../../Modules/Subnet/"
  azurerm_subnet_name          = "sqlmi-subnet"
  location                     = var.location
  resource_group_name          = module.resourcegroup-0000.name
  azurerm_virtual_network_name = module.virtualnetwork-0000.name
  address_prefixes             = "10.0.4.0/24"
  delegation                   = true
  delegation_friendly_name     = "managedinstancedelegation"
  delegation_name              = local.delegation_sql_managedinstances
  delegation_action            = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
  depends_on                   = [module.virtualnetwork-0000]
}

# VM Subnet

module "subnet-0004" {
  source                       = "../../Modules/Subnet/"
  azurerm_subnet_name          = "${module.naming.virtual_network_subnet}-${var.location}-vm"
  location                     = var.location
  resource_group_name          = module.resourcegroup-0000.name
  azurerm_virtual_network_name = module.virtualnetwork-0000.name
  address_prefixes             = "10.0.5.0/24"
  depends_on                   = [module.virtualnetwork-0000]
}
