# AVM Platform - Control Tower

This folder contains Terraform definitions for deploying AWS Control Tower landing zones.

## Files

- `main.tf` - Defines the landing zone.
- `variables.tf` - Input variables for region, manifest path, etc.
- `outputs.tf` - Outputs for landing zone ARN/ID.
- `landing_zone_manifest.json` - JSON manifest for OUs, accounts, and regions.
- `backend.tf` - S3/DynamoDB backend for Terraform state.

## Usage

```bash
terraform init
terraform plan
terraform apply
