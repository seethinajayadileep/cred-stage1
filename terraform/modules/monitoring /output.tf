output "workspace_id"{
    description = "the id of log analytics workspace"
    value=azurerm_log_analytics_workspace.log.id
}
output "workspace_name"{
    description = "the name of log analytics workspace"
    value=azurerm_log_analytics_workspace.log.name
}
