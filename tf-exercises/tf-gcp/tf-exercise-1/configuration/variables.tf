##################################################################################################################################################################
# Bucket variables

variable "name" {
  description = "The name of the bucket."
  type        = string
  validation {
    condition = (
      (can(regex("([^a-zA-Z])\\.([a-zA-Z])", var.name)) && length(var.name) < 222 && !contains([for i in split(".", var.name) : length(i) > 0 && length(i) < 63], false)) ||
      (can(regex("([a-zA-Z0-9])\\.([a-zA-Z0-9-])\\.([a-zA-Z])", var.name)) && length(var.name) < 222 && !contains([for i in split(".", var.name) : length(i) > 0 && length(i) < 63], false)) ||
      length(var.name) >= 3 &&
      length(var.name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9-._]+[a-z0-9]$", var.name)) &&
      !can(regex("google", var.name)) &&
      !can(regex("g00gle", var.name)) &&
      !startswith(var.name, "goog")
    )
    error_message = <<EOT
                        The bucket name cannot be null, 
                        can contain lowercase letters, numeric 
                        characters, dashes, underscores, and dots
                        and must have more than 3 and less than 63 characters"
                        EOT
  }
  nullable = false
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects. If false, Terraform will fail to delete buckets which contain objects."
  type        = bool
  default     = false
}

variable "location" {
  description = "The location of the bucket."
  type        = string
  nullable    = false
}

variable "project_id" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  nullable    = false
  validation {
    condition = (
      length(var.project_id) >= 6 &&
      length(var.project_id) <= 30 &&
      can(regex("^[a-z][0-9a-z-]+[0-9a-z]$", var.project_id)) &&
      !can(regex("google", var.project_id)) &&
      !can(regex("ssl", var.project_id))
    )

    error_message = <<EOT
                        The project_id must start with a lowercase letter, cannot end with a hyphen and can only contain lowercase letters, numbers, and hyphens.
                        The project_id cannot contain restricted strings such as google.
                        The project_id cannot contain restricted strings such as ssl.
                        EOT
  }
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  type        = string
  default     = "STANDARD"
  validation {
    condition     = can(regex("STANDARD|MULTI_REGIONAL|REGIONAL|NEARLINE|COLDLINE|ARCHIVE", var.storage_class))
    error_message = "Unsupported value. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  }
}

variable "versioning" {
  description = "The bucket's Versioning configuration."
  type        = bool
  default     = true
}

##################################################################################################################################################################