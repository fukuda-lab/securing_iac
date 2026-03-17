locals {
  image_tag_sha = sha1(var.image_name)
}

resource "aws_ecr_repository" "app_repo" {
  name = "my-application"
  tags = {
    ImageSignature = local.image_tag_sha
  }
}
