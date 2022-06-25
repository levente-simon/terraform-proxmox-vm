variable "pm_api_host"         { type    = string }
variable "pm_api_port"         { type    = string }
variable "dns_server"          { type    = string }
variable "dns_port"            { type    = string }
variable "searchdomain"        { type    = string }
variable "hosts"               { type    = map(any) }
variable "os_user"             { type    = string }

variable "pm_api_token_id" {
  type      = string
  sensitive = true
}
variable "pm_api_token_secret" {
  type      = string
  sensitive = true
}