resource "google_storage_bucket" "main" {
  name          = var.name
  force_destroy = var.force_destroy
  location      = var.location
  project       = var.project_id
  storage_class = var.storage_class
  labels        = var.labels

  versioning {
    enabled = var.versioning
  }

}