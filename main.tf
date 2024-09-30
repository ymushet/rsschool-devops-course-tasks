provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket         = "rsschool-devops-tfstate"
    key            = "state/terraform.tfstate"
    region         = var.aws_region
    encrypt        = true
    dynamodb_table = "rsschool-devops-terraform-lock-table"
  }
}
