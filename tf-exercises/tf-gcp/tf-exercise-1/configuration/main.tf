module "storage_bucket" {
  source        = "../modules/google_storage_bucket"
  project_id    = var.project_id
  name          = var.name
  location      = var.location
  versioning    = var.versioning
  storage_class = var.storage_class
  force_destroy = var.force_destroy
}