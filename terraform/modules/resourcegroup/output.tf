output "name"{
    description = "name of the resource group"
    value=azurerm_resource_group.rg.name
}
output "location"{
    description = "location of the resource group"
    value = azurerm_resource_group.rg.location
}
output "id"{
    description = "id of resource group"
    value=azurerm_resource_group.rg.id
}