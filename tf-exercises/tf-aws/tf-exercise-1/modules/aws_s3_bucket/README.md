## Module description

This module can be used to create a S3 bucket.

## Usage example

```hcl
module "s3_bucket" {
  source        = "../modules/aws_s3_bucket"
  bucket        = var.bucket
  force_destroy = var.force_destroy
}
  
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket"></a> [bucket](#input\_bucket) | Name of the S3 bucket | `string` | n/a | yes |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Boolean that indicates all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error. | `string` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| <a name="output_id"></a> [id](#output\_id) | Name of the bucket |
