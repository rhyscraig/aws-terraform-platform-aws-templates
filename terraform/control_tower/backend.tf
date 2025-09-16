terraform {
  backend "s3" {
    bucket         = "bt-terraform-remote-state-us-east-1"
    key            = "avm-platform-infra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

