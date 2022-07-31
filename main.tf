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

#create an s3 bucket using terraform: resource, resource name and internal tf name
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-olufolarin-02"
}

# creating an iam user
resource "aws_iam_user" "my_iam_user" {
    name = "my_first_iam_user"
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
    bucket = aws_s3_bucket.my_s3_bucket.id
    acl = "private"
}

# versioning allows different versions to be cached over time
resource "aws_s3_bucket_versioning" "my_s3_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

