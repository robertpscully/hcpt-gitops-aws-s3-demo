variable "bucket_prefix" {
  description = "Prefix for the name of the S3 bucket"
  type        = string
  default     = ""

  validation {
    condition     = length(var.bucket_prefix) == 0 || length(var.bucket_prefix) <= 20
    error_message = "The bucket_prefix must be between 1 and 20 characters long."
  }

  validation {
    condition     = length(var.bucket_prefix) == 0 || can(regex("^[a-z0-9]+$", var.bucket_prefix))
    error_message = "The bucket_prefix can only contain lowercase letters and numbers"
  }

}

variable "file_count" {
  description = "Count of files to create in the S3 bucket"
  type        = number
  default     = 0

  validation {
    condition     = var.file_count >= 0 && var.file_count <= 50
    error_message = "The number of files to create must be between 0 and 50"
  }

}