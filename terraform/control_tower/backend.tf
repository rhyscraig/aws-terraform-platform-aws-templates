terraform {
  backend "s3" {
    bucket         = "avm-terraform-state"
    key            = "avm-platform-infra/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "avm-terraform-locks"
    encrypt        = true
  }
}
