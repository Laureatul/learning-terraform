# Useful commands
aws configure

export AWS_ACCESS_KEY_ID="my-access-key"

export AWS_SECRET_ACCESS_KEY="my-secret-key"

export AWS_REGION="eu-west-2"

terraform init

terraform plan -out tfplan -var-file="terraform.tfvars" 

terraform apply tfplan

terraform destroy -var-file="terraform.tfvars"

terraform-docs markdown . >README.md