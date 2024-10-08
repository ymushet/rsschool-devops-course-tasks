provider "aws" {
  region = var.aws_region
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
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "rsschool-devops-terraform-lock-table"
  }
}
