module "windowsvm-0000" {
  source                        = "../../Modules/WindowsVM/"
  vm_count                      = "2"
  resource_group_name           = module.resourcegroup-0000.name
  location                      = var.location
  windows_virtual_machine_name  = "az-${var.environment}-${var.application_name}-${module.naming.virtual_machine}"
  size                          = "Standard_DS2_v2"
  storage_account_type          = "StandardSSD_LRS"
  microsoft_image               = true
  source_image_id               = null
  sku                           = "2019-Datacenter"
  zone                          = "2"
  virtual_network_name          = module.virtualnetwork-0000.name
  vnet_resource_group_name      = module.resourcegroup-0000.name
  vm_subnet_name                = module.subnet-0004.name
  adminusername                 = "theadmin"
  adminpassword                 = random_password.password.result
  disk_storage_account_type     = "StandardSSD_LRS"
  create_option                 = "Empty"
  disk_size_gb                  = 100
  network_access_policy         = "AllowAll"
  zones                         = ["2"]
  public_network_access_enabled = true
  tags                          = var.tags
  ## Attachement
  with_managed_disk             = "true" # Deployment without a managed disk?
  lun                           = "10"
  caching                       = "ReadWrite"
  depends_on                    = [module.subnet-0004]
}