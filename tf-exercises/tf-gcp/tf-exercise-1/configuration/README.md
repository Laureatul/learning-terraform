# Useful commands
gcloud auth activate-service-account --key-file=C:\Users\#\GCP-SA\demo.json --project=gcp-learning-terraform-demo

gcloud auth application-default login

export GOOGLE_APPLICATION_CREDENTIALS=C:\Users\#\GCP-SA\demo.json

terraform init

terraform plan -out tfplan -var-file="terraform.tfvars" 

terraform apply tfplan

terraform destroy -var-file="terraform.tfvars"

terraform-docs markdown . >README.md