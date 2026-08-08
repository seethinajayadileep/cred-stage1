subscription_id = "e12f710f-4779-4738-bbb9-6b2e658c69f2"
location = "canadacentral"
vnet_address_space = "10.0.0.0/16"
aks_subnet_prefix = "10.0.1.0/24"
postgres_subnet_prefix = "10.0.2.0/24"
node_count = 2
node_min_count = 2
node_max_count = 2
vm_size = "Standard_D2ls_v5"
postgres_admin_username = "credpayadmin"
database_name = "credpay"
log_retention_days = 30
key_valut_name = "credpaykvjaya"
key_valut_resource_group_name = "credRg"
admin_group_object_ids = [
  "28286f7d-ff96-45b9-858a-770882c800a0" 
]