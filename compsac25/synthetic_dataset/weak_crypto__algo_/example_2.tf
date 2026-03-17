resource "aws_s3_bucket" "weak_example" {
  bucket = "my-weak-bucket"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "weak_example" {
  bucket = aws_s3_bucket.weak_example.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "SHA-1"
    }
  }
}
