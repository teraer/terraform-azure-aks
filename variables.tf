 variable "cluster_name" {
     description = "name of kubernetes cluster"
 }

 variable "location" {
     description = "location to deploy kubernetes cluster into"
     default     = "canadaeast"
 }

 variable "resource_group_name" {
     description = "the resource group name"
 }

 variable "pool_name" {
     description = "network that the compute resources of the kubernetes cluster are in"
     default     = "default"
 }

 variable "pool_node_count" {
     description = "initial amount of nodes to deploy for the kubernetes cluster"
     default     = "1"
 }

 variable "pool_vm_size" {
     default = "Standard_D2_v2"
 }

 variable "pool_os_disk_size" {
     description = "pool os disk size in gb"
     default     = "30"
 }

 variable "ARM_CLIENT_ID" {
     description = "service principal ID"
 }

 variable "ARM_CLIENT_SECRET" {
     description = "service principal secret"
 }

 variable "prefix" {
     description = "dns and tag identifier for the cluster"
 }