## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >= 2.9.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | n/a |
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | >= 2.9.3 |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dns_a_record_set.this](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/a_record_set) | resource |
| [dns_ptr_record.this](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/ptr_record) | resource |
| [proxmox_vm_qemu.this](https://registry.terraform.io/providers/telmate/proxmox/latest/docs/resources/vm_qemu) | resource |
| [time_sleep.wait_10_seconds](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_port"></a> [dns\_port](#input\_dns\_port) | n/a | `string` | n/a | yes |
| <a name="input_dns_server"></a> [dns\_server](#input\_dns\_server) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_host"></a> [pm\_api\_host](#input\_pm\_api\_host) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_token_id"></a> [pm\_api\_token\_id](#input\_pm\_api\_token\_id) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_token_secret"></a> [pm\_api\_token\_secret](#input\_pm\_api\_token\_secret) | n/a | `string` | n/a | yes |
| <a name="input_pm_node"></a> [pm\_node](#input\_pm\_node) | n/a | `string` | n/a | yes |
| <a name="input_searchdomain"></a> [searchdomain](#input\_searchdomain) | n/a | `string` | n/a | yes |
| <a name="input_ssh_private_key"></a> [ssh\_private\_key](#input\_ssh\_private\_key) | n/a | `string` | n/a | yes |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | n/a | `string` | n/a | yes |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | n/a | `string` | n/a | yes |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | n/a | `string` | n/a | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | n/a | `number` | `2` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"Terraform created host"` | no |
| <a name="input_exec"></a> [exec](#input\_exec) | n/a | `list` | <pre>[<br>  "hostname"<br>]</pre> | no |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | n/a | `string` | `"host.corp"` | no |
| <a name="input_ipconfig"></a> [ipconfig](#input\_ipconfig) | n/a | `string` | `"ip=dhcp"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | n/a | `string` | `"6144"` | no |
| <a name="input_pm_api_port"></a> [pm\_api\_port](#input\_pm\_api\_port) | n/a | `string` | `"8006"` | no |
| <a name="input_sockets"></a> [sockets](#input\_sockets) | n/a | `number` | `2` | no |
| <a name="input_storage_pool"></a> [storage\_pool](#input\_storage\_pool) | n/a | `string` | `"local-lvm"` | no |
| <a name="input_storage_size_base"></a> [storage\_size\_base](#input\_storage\_size\_base) | n/a | `string` | `"32G"` | no |
| <a name="input_storage_size_data"></a> [storage\_size\_data](#input\_storage\_size\_data) | n/a | `string` | `"128G"` | no |
| <a name="input_user"></a> [user](#input\_user) | n/a | `string` | `"iac"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pm_api_token_id"></a> [pm\_api\_token\_id](#output\_pm\_api\_token\_id) | n/a |
| <a name="output_pm_api_token_secret"></a> [pm\_api\_token\_secret](#output\_pm\_api\_token\_secret) | n/a |
| <a name="output_ssh_private_key"></a> [ssh\_private\_key](#output\_ssh\_private\_key) | n/a |
| <a name="output_ssh_public_key"></a> [ssh\_public\_key](#output\_ssh\_public\_key) | n/a |
