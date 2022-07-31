terraform {
<<<<<<< HEAD
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
=======
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

# configure the aws provider
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

# output
output "my_s3_bucket_versioning" {
  value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled
}

# iam user config deets output
output "iam_user_config_deets" {
  value = aws_iam_user.my_iam_user
}
# NOTE: AWS Resource Notation (arn) is used to uniquely identify an aws resource
>>>>>>> ed3923d (a recap of basic terraform resources)
