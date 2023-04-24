## Summary
this module creates the network setup for the gke cluster and the management vm.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.ssh](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.restricted](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_management_subnet_cidr"></a> [management\_subnet\_cidr](#input\_management\_subnet\_cidr) | cidr for management subnet that contains the management vm instance | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | gcp project id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | gcp region | `string` | n/a | yes |
| <a name="input_restricted_subnet_cidr"></a> [restricted\_subnet\_cidr](#input\_restricted\_subnet\_cidr) | cidr for restricted subnet that contains the gke cluster | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | vpc name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_management_subnet_cidr"></a> [management\_subnet\_cidr](#output\_management\_subnet\_cidr) | n/a |
| <a name="output_management_subnet_id"></a> [management\_subnet\_id](#output\_management\_subnet\_id) | n/a |
| <a name="output_restricted_subnet_self_link"></a> [restricted\_subnet\_self\_link](#output\_restricted\_subnet\_self\_link) | n/a |
| <a name="output_vpc_self_link"></a> [vpc\_self\_link](#output\_vpc\_self\_link) | n/a |
