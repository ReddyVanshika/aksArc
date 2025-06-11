variable location {
  type        = string
  default     = ""
}

variable resource_group_name {
  type        = string
  default     = ""
}

variable cluster_name{
  type        = string
  default     = ""  
}
variable agent_name{
  type        = string
  default     = "testnodepool"  
}

variable agent_VMsize{
  type        = string
  default     = "Standard_A4_v2"  
}

variable agent_count{
  type        = number
  default     = 1  
}

variable agent_OStype{
  type        = string
  default     = "Linux"  
}
variable loadBalancerCount {
  type = number
  default = 0
}

variable controlPlaneNodeCount {
  type = number
  default = 1
}
variable controlPlaneIp {
  type = string
  default = ""
}
variable controlPlaneVMSize {
  type = string
  default = "Standard_A4_v2"
}

variable customLocation {
  type = string 
  default = ""
}

variable addressPrefix {
  type = string
  default = "172.16.0.0/16"
}
variable nodepoolLabel {
  type = map(string)
  default = ""
}

variable nodepoolTaint{
  type = string
  default = ""
}



variable username {
  type        = string
  description = "The admin username for the new cluster."
  default     = "azureadmin"
}

variable ssh_key {
  type        = string
  description = "The admin username for the new cluster."
  default     = ""
}