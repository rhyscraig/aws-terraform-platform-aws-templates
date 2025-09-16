provider "aws" {
  region = var.region
}

resource "aws_controltower_landing_zone" "avm_landing_zone" {
  manifest_json = file("${path.module}/landing_zone_manifest.json")
  version       = "3.2"
}

output "landing_zone_arn" {
  value = aws_controltower_landing_zone.avm_landing_zone.arn
}