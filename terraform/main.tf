locals{
    name_prefix="credpays1"
    tag={
        project="credpay"
        managed-by="terraform"
    }
}
module "resource_group"{
    source = "./modules/resourcegroup"
    name="rg-${local.name_prefix}"
    location = var.location
    tags=local.tag
}
module "networking" {
    source = "./modules/networking"
    name_prefix = local.name_prefix
    resource_group_name = module.resource_group.name
    location = module.resource_group.location
    tags=local.tag
    aks_subnet_prefix = var.aks_subnet_prefix
    postgres_subnet_prefix = var.postgres_subnet_prefix
    vnet_address_space = var.vnet_address_space

  
}
module "monitoring"{
    source = "./modules/monitoring "
    name_prefix = local.name_prefix
    resource_group_name = module.resource_group.name
    location = module.resource_group.location
    tags=local.tag
    retention_days = var.log_retention_days
}
module "postgres"{
    source = "./modules/postgres"
     name_prefix = local.name_prefix
    resource_group_name = module.resource_group.name
    location = module.resource_group.location
    tags=local.tag
    postgres_version = var.postgres_version
    admin_username = var.postgres_admin_username
    database_name = var.database_name

}
module "aks"{
    source = "./modules/aks"
     name_prefix = local.name_prefix
    resource_group_name = module.resource_group.name
    location = module.resource_group.location
    tags=local.tag
    node_count = var.node_count
    node_min_count = var.node_min_count
    node_max_count = var.node_max_count
    vm_size = var.vm_size
 aks_subnet_id = module.networking.subnet_ids["aks"]
 loganalytics_workspace_id = module.monitoring.workspace_id
admin_group_object_ids = var.admin_group_object_ids

}
module "keyvault" {

    source = "./modules/keyvault"
    postgres_database_name = module.postgres.database_name
    postgres_admin_password = module.postgres.admin_user
    postgres_admin_username = module.postgres.admin_password
   postgres_fqdn = module.postgres.fqdn
   key_valut_name = var.key_valut_name
   key_valut_resource_group_name = var.key_valut_resource_group_name

  
}