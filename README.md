# hcpt-gitops-aws-s3-demo
HCL configuration to demo deployment to AWS using Terraform with a GitOps pipeline

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.28.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.28.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.hcpt_gitops_bucket](https://registry.terraform.io/providers/hashicorp/aws/6.28.0/docs/resources/s3_bucket) | resource |
| [aws_s3_object.example_files](https://registry.terraform.io/providers/hashicorp/aws/6.28.0/docs/resources/s3_object) | resource |
| [random_pet.s3_bucket_suffix](https://registry.terraform.io/providers/hashicorp/random/3.8.0/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_prefix"></a> [bucket\_prefix](#input\_bucket\_prefix) | Prefix for the name of the S3 bucket | `string` | `"robertscully"` | no |
| <a name="input_files_to_create"></a> [files\_to\_create](#input\_files\_to\_create) | Count of files to create in the S3 bucket | `number` | `0` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->