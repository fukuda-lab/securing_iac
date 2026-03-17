resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name

  provider = aws.secondary

  # Set to true to make testing easier
  force_destroy = true
}
