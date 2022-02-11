module "resourcegroup-0000" {
  source              = "../../Modules/ResourceGroup/"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}