<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_ou_cloud_access_role.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/ou_cloud_access_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_path"></a> [aws\_iam\_path](#input\_aws\_iam\_path) | Path for the AWS IAM role | `string` | `null` | no |
| <a name="input_aws_iam_permissions_boundary"></a> [aws\_iam\_permissions\_boundary](#input\_aws\_iam\_permissions\_boundary) | Permissions boundary for the AWS IAM role | `number` | `null` | no |
| <a name="input_aws_iam_policies"></a> [aws\_iam\_policies](#input\_aws\_iam\_policies) | List of AWS IAM policies to attach to the role | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_aws_iam_role_name"></a> [aws\_iam\_role\_name](#input\_aws\_iam\_role\_name) | Name of the AWS IAM role | `string` | n/a | yes |
| <a name="input_azure_role_definitions"></a> [azure\_role\_definitions](#input\_azure\_role\_definitions) | List of Azure role definitions to attach to the role | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_gcp_iam_roles"></a> [gcp\_iam\_roles](#input\_gcp\_iam\_roles) | List of GCP IAM roles to attach to the role | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_long_term_access_keys"></a> [long\_term\_access\_keys](#input\_long\_term\_access\_keys) | Enable long-term access keys | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the cloud access role | `string` | n/a | yes |
| <a name="input_ou_id"></a> [ou\_id](#input\_ou\_id) | ID of the OU associated with the cloud access role | `number` | n/a | yes |
| <a name="input_short_term_access_keys"></a> [short\_term\_access\_keys](#input\_short\_term\_access\_keys) | Enable short-term access keys | `bool` | `false` | no |
| <a name="input_user_groups"></a> [user\_groups](#input\_user\_groups) | List of user groups to assign to the role | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_users"></a> [users](#input\_users) | List of users to assign to the role | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_web_access"></a> [web\_access](#input\_web\_access) | Enable web access | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ou_car_id"></a> [ou\_car\_id](#output\_ou\_car\_id) | The ID of the cloud access role created by this module |
<!-- END_TF_DOCS -->