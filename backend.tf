# This is the single backend configuration for the entire avm-platform.
terraform {
  backend "s3" {
    bucket         = "bt-terraform-remote-state-us-east-1"
    key            = "avm-platform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}