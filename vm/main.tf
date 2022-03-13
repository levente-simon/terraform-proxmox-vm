terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.9.3"
    }
  }
}

locals {
  a_record_data = regex("(?P<hostname>^[^.]*)\\.(?P<domain>.*$)", var.fqdn)
  default_exec = [
    "sudo mkfs.xfs /dev/sdb",
    "sudo mkdir /data",
    "cat <<EOF | sudo tee -a /etc/fstab > /dev/null\n/dev/sdb /data xfs defaults 0 0\nEOF",
    "sudo mount -a",
  ]
}

resource "proxmox_vm_qemu" "this" {
  name  = var.fqdn
  desc  = var.description

  target_node  = var.pm_node
  clone        = var.template_name
  agent        = 1
  os_type      = "host-init"
  ciuser       = var.user
  sshkeys      = var.ssh_public_key
  cores        = var.cores
  sockets      = var.sockets
  cpu          = "host"
  memory       = var.memory
  nameserver   = var.dns_server 
  searchdomain = var.searchdomain
  onboot       = true

  ipconfig0   = var.ipconfig
  network {
    model  = "virtio"
    bridge = "vmbr0"
    tag    = var.vlan_id
  }

  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"
  disk {
    slot     = 0
    size     = var.storage_size_base
    type     = "scsi"
    storage  = var.storage_pool
    iothread = 1
  }
  disk {
    slot     = 1
    size     = var.storage_size_data
    type     = "scsi"
    storage  = "local-lvm"
    iothread = 1
  } 


  connection {
    type        = "ssh"
    user        = "iac"
    private_key = var.ssh_private_key
    host        = proxmox_vm_qemu.this.default_ipv4_address
  }

  provisioner "remote-exec" {
    inline = concat(local.default_exec, var.exec)
  }
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [
    proxmox_vm_qemu.this
  ]
  create_duration = "10s"
}

resource "dns_a_record_set" "this" {
  depends_on = [
    time_sleep.wait_10_seconds
  ]
  zone = "${local.a_record_data.domain}."
  name = local.a_record_data.hostname
  addresses = [
    proxmox_vm_qemu.this.default_ipv4_address
  ]
  ttl = 300
}

resource "dns_ptr_record" "this" {
  depends_on = [
    dns_a_record_set.this
  ]
  zone  = format("%s.in-addr.arpa.", join(".",slice(reverse(split(".", proxmox_vm_qemu.this.default_ipv4_address)),1,4)))
  name  = format("%s", split(".", proxmox_vm_qemu.this.default_ipv4_address).3)
  ptr   = "${var.fqdn}."
  ttl  = 300
}
