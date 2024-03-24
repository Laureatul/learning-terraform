output "id" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.main.id
}

output "arn" {
  description = "ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
  value       = aws_s3_bucket.main.arn
}