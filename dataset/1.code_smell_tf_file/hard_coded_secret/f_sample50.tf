resource "aws_s3_bucket_object" "sensitive_variables" {
  bucket = aws_s3_bucket.metadatamanagement_private.id
  key    = "sensitive_variables.tf"
  source = "sensitive_variables.tf"
  etag = filemd5("sensitive_variables.tf")
}
