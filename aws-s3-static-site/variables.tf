variable "region" {
  type        = string
  default     = "eu-west-2"
}

variable "bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name"
  default     = "muhammad-tf-static-site-demo"
}
