# GCP Terraform exercises

1. Create a [Storage Bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) in your current GCP project with the below configuration:

```hcl
name: user_bucket
location: europe-west2
versioning: True
storage_class: STANDARD
force_destroy: True
```


How to resolve it -> [Storage_bucket](tf-exercise-1/)