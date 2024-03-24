# AWS Terraform exercises

1. Create a [S3 Bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) on eu-west-2 in your AWS account with the below configuration:

```hcl
name: user-bucket
force_destroy: True
```


How to resolve it -> [S3_bucket](tf-exercise-1/)