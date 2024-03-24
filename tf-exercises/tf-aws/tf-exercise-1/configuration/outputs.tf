output "s3_id" {
  description = "Name of the bucket"
  value       = module.s3_bucket.id
}

output "s3_arn" {
  description = "ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
  value       = module.s3_bucket.arn
}