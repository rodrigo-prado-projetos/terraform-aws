terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }

  backend "s3" {
    profile = "terraform"
    bucket  = "trabalhofinaldevops"
    key     = "state/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}