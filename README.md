# tf-module-aws-vpc
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_rds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The availability zone of the VPC | `string` | `"eu-west-1a"` | no |
| <a name="input_availability_zone_rds"></a> [availability\_zone\_rds](#input\_availability\_zone\_rds) | The availability zone of the second RDS subnet | `string` | `"eu-west-1b"` | no |
| <a name="input_private_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#input\_private\_subnet\_cidr\_block) | The CIDR block of the private subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_private_subnet_rds_cidr_block"></a> [private\_subnet\_rds\_cidr\_block](#input\_private\_subnet\_rds\_cidr\_block) | The CIDR block of the second private subnet for RDS | `string` | `"10.0.3.0/24"` | no |
| <a name="input_public_subnet_cidr_block"></a> [public\_subnet\_cidr\_block](#input\_public\_subnet\_cidr\_block) | The CIDR block of the public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | The CIDR block of the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_isprd"></a> [vpc\_isprd](#input\_vpc\_isprd) | If a VPC is prd or noprd | `bool` | `false` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone"></a> [availability\_zone](#output\_availability\_zone) | value of the availability zone |
| <a name="output_availability_zone_rds"></a> [availability\_zone\_rds](#output\_availability\_zone\_rds) | value of the availability zone for RDS. It is mandatory to have 2 different AZ to deploy a RDS |
| <a name="output_igw_arn"></a> [igw\_arn](#output\_igw\_arn) | value of the internet gateway arn |
| <a name="output_igw_id"></a> [igw\_id](#output\_igw\_id) | value of the internet gateway id |
| <a name="output_private_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#output\_private\_subnet\_cidr\_block) | value of the private subnet cidr block |
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | value of the private subnet id |
| <a name="output_private_subnet_rds_cidr_block"></a> [private\_subnet\_rds\_cidr\_block](#output\_private\_subnet\_rds\_cidr\_block) | value of the private rds subnet cidr block |
| <a name="output_private_subnet_rds_id"></a> [private\_subnet\_rds\_id](#output\_private\_subnet\_rds\_id) | value of the private rds subnet id |
| <a name="output_public_subnet_cidr_block"></a> [public\_subnet\_cidr\_block](#output\_public\_subnet\_cidr\_block) | value of the public subnet cidr block |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | value of the public subnet id |
| <a name="output_rta_arn"></a> [rta\_arn](#output\_rta\_arn) | value of the route table arn |
| <a name="output_rta_id"></a> [rta\_id](#output\_rta\_id) | value of the route table id |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | value of vpc arn |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | value of vpc cidr block |
| <a name="output_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#output\_vpc\_enable\_dns\_hostnames) | true if dns hostnames are enabled on the VPC |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | value of vpc id |
| <a name="output_vpc_isprd"></a> [vpc\_isprd](#output\_vpc\_isprd) | value of tag is prd. Is the VPC a PRD or NO-PRD VPC |
<!-- END_TF_DOCS -->
