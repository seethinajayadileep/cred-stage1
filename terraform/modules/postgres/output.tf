output "server_id"{
    description = "the id of postgressql flexioble sevrer"
    value=azurerm_postgresql_flexible_server.pgs.id
}
output "server_name"{
    description = "the name of postgressql flexioble sevrer"
    value=azurerm_postgresql_flexible_server.pgs.name

}
output "fqdn"{
    description = "the full qualifed domain name postgressql flexioble sevrer"
    value=azurerm_postgresql_flexible_server.pgs.fqdn
}
output "database_name"{
    description = "the full qualifed domain name postgressql flexioble sevrer"
    value=azurerm_postgresql_flexible_server.pgs.name
}
output "admin_user"{
    description ="the admin username of postgres flexible server"
    value=azurerm_postgresql_flexible_server.pgs.administrator_login
}
output "admin_password"{
    description ="the admin password of postgres flexible server"
    value=random_password.admin.result
    sensitive = true
}