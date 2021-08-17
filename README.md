# TF_azurerm_linux_vm_module

Deploy Azure Linux virtual machine with a dedicated Terraform module.

## Requirements

* A Resource Group
* A Network Interface

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.az_vm_linux](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | The Password which should be used for the local-administrator on this Virtual Machine. | `string` | `"@dminP@44m0rD"` | no |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | The username of the local administrator used for the Virtual Machine. | `string` | `"adminuser"` | no |
| <a name="input_computer_name"></a> [computer\_name](#input\_computer\_name) | Specifies the Hostname which should be used for this Virtual Machine. | `string` | `""` | no |
| <a name="input_image_offer"></a> [image\_offer](#input\_image\_offer) | Specifies the offer of the image used to create the virtual machines. | `string` | `"UbuntuServer"` | no |
| <a name="input_image_publisher"></a> [image\_publisher](#input\_image\_publisher) | Specifies the publisher of the image used to create the virtual machines. | `string` | `"Canonical"` | no |
| <a name="input_image_sku"></a> [image\_sku](#input\_image\_sku) | Specifies the SKU of the image used to create the virtual machines. | `string` | `"18.04-LTS"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | Specifies the version of the image used to create the virtual machines. | `string` | `"latest"` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure location where the Linux Virtual Machine should exist. | `string` | n/a | yes |
| <a name="input_network_interface_ids"></a> [network\_interface\_ids](#input\_network\_interface\_ids) | A list of Network Interface ID's which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine. | `list(string)` | n/a | yes |
| <a name="input_os_disk_caching"></a> [os\_disk\_caching](#input\_os\_disk\_caching) | The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite. | `string` | `"ReadWrite"` | no |
| <a name="input_os_disk_storage_account_type"></a> [os\_disk\_storage\_account\_type](#input\_os\_disk\_storage\_account\_type) | The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard\_LRS, StandardSSD\_LRS and Premium\_LRS. | `string` | `"Standard_LRS"` | no |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format. | `string` | `"~/.ssh/id_rsa.pub"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group in which the Linux Virtual Machine should be exist. | `string` | n/a | yes |
| <a name="input_vm_auth_method"></a> [vm\_auth\_method](#input\_vm\_auth\_method) | Authentication method: ssh\_key or password | `string` | `"password"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the Linux Virtual Machine. | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | The SKU which should be used for this Virtual Machine, such as Standard\_F2. | `string` | `"Standard_F2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The ID of the Linux Virtual Machine. |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | The Name of the Linux Virtual Machine. |