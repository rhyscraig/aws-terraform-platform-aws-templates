# Default AWS region
variable "region" {
  description = "AWS region for all platform resources"
  type        = string
  default     = "us-east-1"
}

# Default tags applied to all resources
variable "default_tags" {
  description = "Default tags for all resources"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}