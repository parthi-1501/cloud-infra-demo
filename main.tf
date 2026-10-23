terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "parthi-jenkins-infra01"
    key    = "cloud-infra/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "cloud-infra-vpc" {
  cidr_block = "10.0.0.0/16"

    tags = {
        Name = "cloud-infra-vpc"
    }
}