 resource "azurerm_kubernetes_cluster" "default" {
 name                = var.cluster_name
 location            = var.location
 resource_group_name = var.resource_group_name
 dns_prefix          = var.prefix

 default_node_pool {
     name            = var.pool_name
     node_count      = var.pool_node_count
     vm_size         = var.pool_vm_size
     os_disk_size_gb = var.pool_os_disk_size
 }

 service_principal {
     client_id     = var.ARM_CLIENT_ID
     client_secret = var.ARM_CLIENT_SECRET
 }

 role_based_access_control {
     enabled = true
 }

 tags = {
     studentid = var.prefix
 }
 }