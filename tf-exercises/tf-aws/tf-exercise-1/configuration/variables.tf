variable "bucket" {
  description = "Name of the S3 bucket"
  type        = string
  nullable    = false
}

variable "force_destroy" {
  description = "Boolean that indicates all objects (including any locked objects) should be deleted from the bucket when the bucket is destroyed so that the bucket can be destroyed without error."
  type        = string
  default     = false
}