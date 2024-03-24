output "storage_bucket_name" {
  description = "Cloud storage bucket name"
  value       = module.storage_bucket.name
}

output "storage_bucket_url" {
  description = "Cloud storage bucket URL"
  value       = module.storage_bucket.url
}