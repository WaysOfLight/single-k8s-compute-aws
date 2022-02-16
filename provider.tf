terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.59.0"
    }
  }
  required_version = ">= 1.0.0"
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      project     = var.project
      team        = var.team
      environment = var.environment
    }
  }
}