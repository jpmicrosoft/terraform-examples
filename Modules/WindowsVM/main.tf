resource "random_string" "osdisk" {
  length  = 32
  special = false
  lower   = true
  upper   = false
  number  = true
}


data "azurerm_subnet" "subnet0000" {
  name                 = var.vm_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.vnet_resource_group_name
}

resource "azurerm_network_interface" "nic" {
  count               = var.vm_count
  name                = "${var.windows_virtual_machine_name}-nic-${count.index}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet0000.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm" {
  count               = var.vm_count
  name                = "${var.windows_virtual_machine_name}-${count.index}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  admin_username      = var.adminusername
  admin_password      = var.adminpassword
  source_image_id     = var.source_image_id

  network_interface_ids = [
     azurerm_network_interface.nic.*.id[count.index],
   ]

  os_disk {
    name                 = "${var.windows_virtual_machine_name}-${count.index}-${random_string.osdisk.result}"
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }
  dynamic "source_image_reference" {
  for_each = var.microsoft_image == true ? [1] : []
  content {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.sku
    version   = "latest"
  }
  }
  boot_diagnostics {
    storage_account_uri = null
  }

  zone = var.zone
}

## Managed Disk

resource "azurerm_managed_disk" "manageddisk1" {
  count                 = var.with_managed_disk == "true" ? var.vm_count : 0
  name                  = "${azurerm_windows_virtual_machine.vm[count.index].name}-disk${count.index}"
  location              = var.location
  resource_group_name   = var.resource_group_name
  storage_account_type  = var.disk_storage_account_type
  create_option         = var.create_option
  disk_size_gb          = var.disk_size_gb
  network_access_policy = var.network_access_policy
  zones                 = var.zones
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

## Attachement

resource "azurerm_virtual_machine_data_disk_attachment" "datadisk_attach" {
    count              = var.with_managed_disk == "true" ? var.vm_count : 0
    managed_disk_id    = azurerm_managed_disk.manageddisk1[count.index].id
    virtual_machine_id = azurerm_windows_virtual_machine.vm[count.index].id
    lun                = var.lun + 1
    caching            = var.caching
}