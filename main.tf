terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

// configure the provider: aws
provider "aws" {
  region = "us-east-1"
}
