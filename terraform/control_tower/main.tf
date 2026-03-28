resource "aws_controltower_landing_zone" "avm_landing_zone" {
  # [FIX] Construct the path here
  manifest_json = file("${path.module}/${var.landing_zone_manifest_name}")
  version       = "3.2"
}
