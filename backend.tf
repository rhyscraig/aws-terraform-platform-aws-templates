# S3 backend with native locking (Terraform >= 1.10, no DynamoDB needed).
# bucket, key, region, kms_key_id passed via -backend-config in CI.
terraform {
  backend "s3" {
    use_lockfile = true
    encrypt      = true
  }
}
