variable "name_prefix" {
type = string
}
variable "resource_group_name" {
    type = string
}
variable "location"{
    type = string
}
variable "node_count"{
    type=number
}
variable "node_min_count" {
    type=number
  
}
variable "node_max_count"{
    type = number
}
variable vm_size{
type = string
}
variable aks_subnet_id{
    type = string
}
variable "loganalytics_workspace_id"{
type = string
}
variable "tags"{
    type = map(string)
    default = {
      "enviroment" = "dev"
    }
}

variable "admin_group_object_ids" {
  description = "List of Microsoft Entra ID group object IDs for AKS cluster admins"
  type        = list(string)
  default     = []
}