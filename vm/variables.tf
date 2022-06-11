variable "pm_api_host" {
  type    = string
}
  
variable "pm_api_port" {
  type    = string
  default = "8006"
}

variable "pm_api_token_id" {
  type    = string
}

variable "pm_api_token_secret" {
  type    = string
}

variable "fqdn" {
  type    = string
  default = "host.corp"
}

variable "description" {
  type    = string
  default = "Terraform created host"
}

variable "user" {
  type    = string
  default = "iac"

}

variable "ssh_public_key" {
  type = string
}

variable "pm_node" {
  type = string
}

variable "template_name" {
  type    = string
}

variable "ipconfig" {
  type    = string
  default = "ip=dhcp"
}

variable "vlan_id" {
  type = string
}

variable "storage_size" {
  type    = string
  default = "32G"
}

variable "storage_pool" {
  type    = string
  default = "local-lvm"
} 

variable "memory" {
  type    = string
  default = "6144"
}

variable "sockets" {
  type    = number
  default = 2
}

variable "cores" {
  type    = number
  default = 2
}

variable "exec" {
  type    = list
  default = ["hostname"]
}

variable "dns_server" {
 type    = string
}

variable "dns_port" {
 type    = string
}

variable "searchdomain" {
  type    = string
}

variable "ssh_private_key" {
  type    = string
}
