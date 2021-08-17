output "vm_id" {
  description = "The ID of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.az_vm_linux.id
}

output "vm_name" {
  description = "The Name of the Linux Virtual Machine."
  value       = azurerm_linux_virtual_machine.az_vm_linux.name
}