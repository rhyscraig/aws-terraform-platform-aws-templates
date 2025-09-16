output "landing_zone_id" {
  description = "The Control Tower Landing Zone ID"
  value       = aws_controltower_landing_zone.avm_landing_zone.id
}

output "landing_zone_arn" {
  description = "The ARN of the Control Tower landing zone"
  value       = aws_controltower_landing_zone.avm_landing_zone.arn
}
