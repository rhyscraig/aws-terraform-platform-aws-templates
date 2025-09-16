variable "region" {
  description = "Region to deploy Control Tower landing zone"
  type        = string
  default     = "eu-west-1"
}

variable "landing_zone_manifest_path" {
  description = "Path to the landing zone manifest JSON file"
  type        = string
  default     = "${path.module}/landing_zone_manifest.json"
}

variable "default_tags" {
  type = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}
