output "an_aws_s3_bucket" {
    value = aws_s3_bucket.folarin_s3_bucket.bucket
}

output "aws_s3_bucket_versioning" {
    value = aws_s3_bucket.folarin_s3_bucket.versioning[0].enabled
}

output "aws_iam_user_details" {
    value = aws_iam_user.fola_iam_user_01
}