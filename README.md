## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | >= 3.2.1 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >= 2.9.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vm_hosts"></a> [vm\_hosts](#module\_vm\_hosts) | ./vm | n/a |

## Resources

| Name | Type |
|------|------|
| [tls_private_key.ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_hosts"></a> [cluster\_hosts](#input\_cluster\_hosts) | n/a | `map(any)` | n/a | yes |
| <a name="input_dns_port"></a> [dns\_port](#input\_dns\_port) | n/a | `string` | n/a | yes |
| <a name="input_dns_server"></a> [dns\_server](#input\_dns\_server) | n/a | `string` | n/a | yes |
| <a name="input_os_user"></a> [os\_user](#input\_os\_user) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_host"></a> [pm\_api\_host](#input\_pm\_api\_host) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_port"></a> [pm\_api\_port](#input\_pm\_api\_port) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_token_id"></a> [pm\_api\_token\_id](#input\_pm\_api\_token\_id) | n/a | `string` | n/a | yes |
| <a name="input_pm_api_token_secret"></a> [pm\_api\_token\_secret](#input\_pm\_api\_token\_secret) | n/a | `string` | n/a | yes |
| <a name="input_searchdomain"></a> [searchdomain](#input\_searchdomain) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pm_api_token_id"></a> [pm\_api\_token\_id](#output\_pm\_api\_token\_id) | n/a |
| <a name="output_pm_api_token_secret"></a> [pm\_api\_token\_secret](#output\_pm\_api\_token\_secret) | n/a |
| <a name="output_ssh_private_key"></a> [ssh\_private\_key](#output\_ssh\_private\_key) | n/a |
| <a name="output_ssh_public_key"></a> [ssh\_public\_key](#output\_ssh\_public\_key) | n/a |
