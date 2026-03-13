resource "aws_s3_bucket" "public_write" {
  bucket = "my-app-public-writable-bucket"
}

resource "aws_s3_bucket_policy" "allow_public_put" {
  bucket = aws_s3_bucket.public_write.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "AllowPublicPut"
      Effect    = "Allow"
      Principal = "*"
      Action    = ["s3:PutObject", "s3:PutObjectAcl"]
      Resource  = "${aws_s3_bucket.public_write.arn}/*"
    }]
  })
}
