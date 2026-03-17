resource "aws_sns_topic" "weak_topic_name" {
  name = "events-${sha1(var.project_salt)}"
}
