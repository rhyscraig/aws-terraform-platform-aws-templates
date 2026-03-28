variable "region" {
  description = "Region to deploy Control Tower landing zone"
  type        = string
  default     = "eu-west-1"
}

variable "landing_zone_manifest_name" {
  description = "Name of the landing zone manifest JSON file (must be in same module)"
  type        = string
  # [FIX] Removed path.module interpolation
  default = "landing_zone_manifest.json"
}

variable "default_tags" {
  type = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
