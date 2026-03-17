resource "aws_s3_bucket" "weak_bucket_name" {
  bucket = "assets-${md5(var.project_salt)}"
}
