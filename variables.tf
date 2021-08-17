variable "vm_auth_method" {
  description = "Authentication method: ssh_key or password"
  type        = string
  default     = "password"
  validation {
    condition     = contains(["password", "ssk_key"], var.vm_auth_method)
    error_message = "Authentication method can be only ssh_key or password."
  }
}
variable "vm_name" {
  description = "The name of the Linux Virtual Machine."
  type        = string
}
variable "computer_name" {
  description = "Specifies the Hostname which should be used for this Virtual Machine."
  type        = string
  default     = ""
}
variable "resource_group_name" {
  description = "The name of the Resource Group in which the Linux Virtual Machine should be exist."
  type        = string
}
variable "location" {
  description = "The Azure location where the Linux Virtual Machine should exist."
  type        = string
}
variable "vm_size" {
  description = "The SKU which should be used for this Virtual Machine, such as Standard_F2."
  type        = string
  default     = "Standard_F2"
}
variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine."
  type        = string
  default     = "adminuser"
  sensitive   = true
}
variable "network_interface_ids" {
  description = "A list of Network Interface ID's which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine."
  type        = list(string)
}
variable "admin_password" {
  description = "The Password which should be used for the local-administrator on this Virtual Machine."
  type        = string
  default     = "@dminP@44m0rD"
  sensitive   = true
}
variable "public_key_path" {
  description = "The Public Key which should be used for authentication, which needs to be at least 2048-bit and in ssh-rsa format."
  default     = "~/.ssh/id_rsa.pub"
}
variable "os_disk_caching" {
  description = "The Type of Caching which should be used for the Internal OS Disk. Possible values are None, ReadOnly and ReadWrite."
  type        = string
  default     = "ReadWrite"
}
variable "os_disk_storage_account_type" {
  description = "The Type of Storage Account which should back this the Internal OS Disk. Possible values are Standard_LRS, StandardSSD_LRS and Premium_LRS."
  type        = string
  default     = "Standard_LRS"
}
variable "image_publisher" {
  description = "Specifies the publisher of the image used to create the virtual machines."
  type        = string
  default     = "Canonical"
}
variable "image_offer" {
  description = "Specifies the offer of the image used to create the virtual machines."
  type        = string
  default     = "UbuntuServer"
}
variable "image_sku" {
  description = "Specifies the SKU of the image used to create the virtual machines."
  type        = string
  default     = "18.04-LTS"
}
variable "image_version" {
  description = " Specifies the version of the image used to create the virtual machines."
  type        = string
  default     = "latest"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Virtual Network"
  default     = {}
}