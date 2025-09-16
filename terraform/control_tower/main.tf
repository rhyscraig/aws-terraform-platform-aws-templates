resource "aws_controltower_landing_zone" "avm_landing_zone" {
  manifest_json = file("${path.module}/landing_zone_manifest.json")
  version       = "3.2"
}
