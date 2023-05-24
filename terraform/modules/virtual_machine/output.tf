output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}
