variable "pm_api_host"         { type    = string }
variable "pm_api_token_id"     { type    = string }
variable "pm_api_token_secret" { type    = string }
variable "pm_api_port"         { type    = string }
variable "dns_server"          { type    = string }
variable "dns_port"            { type    = string }
variable "searchdomain"        { type    = string }
variable "cluster_hosts"       { type    = map(any) }
variable "os_user"             { type    = string }

