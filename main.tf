terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.9.3"
    }
    dns = {
      version = ">= 3.2.1"
    }
  }
}

provider "dns" {
  update {
    server = var.dns_server
    port   = var.dns_port
  }
}

provider "proxmox" {
  pm_api_url          = "https://${var.pm_api_host}:${var.pm_api_port}/api2/json"
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = true
}


resource "tls_private_key" "ssh" {
  algorithm   = "ECDSA"
  ecdsa_curve  = "P256"
}

module "vm_hosts" {
  depends_on          = [ tls_private_key.ssh ]
  pm_api_host         = var.pm_api_host
  pm_api_port         = var.pm_api_port
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  ssh_private_key     = tls_private_key.ssh.private_key_pem
  dns_server          = var.dns_server
  dns_port            = var.dns_port
  searchdomain        = var.searchdomain

  for_each = var.cluster_hosts

  source   = "./vm"

  fqdn              = each.value.fqdn
  pm_node           = each.value.pm_node
  user              = var.os_user
  ipconfig          = each.value.ip == "dhcp" ? "ip=dhcp" : "ip=${each.value.ip}/${each.value.mask},gw=${each.value.gw}"
  template_name     = each.value.template_name
  vlan_id           = each.value.vlan_id
  memory            = each.value.memory
  storage_size      = each.value.storage_size
  ssh_public_key    = tls_private_key.ssh.public_key_openssh
  exec              = each.value.exec
}
