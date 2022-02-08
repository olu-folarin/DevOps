resource "aws_s3_bucket" "folarin_s3_bucket" {
  bucket = "my-s3-bucket-folarin"
  versioning {
    enabled = true
  }
}

resource "aws_iam_user" "fola_iam_user_01" {
  name = "my-iam-user-o1"
}