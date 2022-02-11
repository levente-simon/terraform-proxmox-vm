output "pm_api_token_id" {
  value     = var.pm_api_token_id
  sensitive = true
}

output "pm_api_token_secret" {
  value     = var.pm_api_token_secret
  sensitive = true
}

output "ssh_private_key" {
  value     = tls_private_key.ssh.private_key_pem
  sensitive = true
}

output "ssh_public_key" {
  value     = tls_private_key.ssh.public_key_openssh
  sensitive = true
}

