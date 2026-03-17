resource "aws_ecr_repository" "app_repo" {
  name = "my-application"
  tags = {
    ImageSignature = sha1(var.image_name)
  }
}
