## Summary
this module creates a private gke cluster with its network setup and management vm that will have cluster connection.

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gke"></a> [gke](#module\_gke) | ./gke | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | name for gke cluster | `string` | n/a | yes |
| <a name="input_management_subnet_cidr"></a> [management\_subnet\_cidr](#input\_management\_subnet\_cidr) | cidr for management subnet that contains the management vm instance | `string` | `"10.0.1.0/24"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | gcp project id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | gcp region | `string` | n/a | yes |
| <a name="input_restricted_subnet_cidr"></a> [restricted\_subnet\_cidr](#input\_restricted\_subnet\_cidr) | cidr for restricted subnet that contains the gke cluster | `string` | `"10.0.2.0/24"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke_cluster_name"></a> [gke\_cluster\_name](#output\_gke\_cluster\_name) | n/a |
| <a name="output_gke_management_vm_name"></a> [gke\_management\_vm\_name](#output\_gke\_management\_vm\_name) | n/a |
