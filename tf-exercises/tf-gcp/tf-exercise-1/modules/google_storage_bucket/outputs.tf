output "name" {
  description = "The name of the bucket"
  value       = google_storage_bucket.main.name
}

output "url" {
  description = "The base URL of the bucket, in the format gs://<bucket-name>."
  value       = google_storage_bucket.main.url
}