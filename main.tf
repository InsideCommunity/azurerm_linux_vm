locals {
  ssh_key_auth = var.vm_auth_method == "ssh_key" ? { dummy_create = true } : {}
}

resource "azurerm_linux_virtual_machine" "az_vm_linux" {
  name                            = var.vm_name
  computer_name                   = var.computer_name == "" ? var.vm_name : var.computer_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.vm_auth_method == "password" ? var.admin_password : null
  network_interface_ids           = var.network_interface_ids
  disable_password_authentication = var.vm_auth_method == "password" ? false : true

  dynamic "admin_ssh_key" {
    for_each = local.ssh_key_auth
    content {
      username   = var.admin_username
      public_key = file(var.public_key_path)
    }
  }

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }
}