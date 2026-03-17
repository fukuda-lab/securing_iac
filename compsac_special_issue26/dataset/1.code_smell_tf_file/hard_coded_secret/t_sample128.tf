resource "gitlab_runner" "project_runner" {
  description      = "A runner for my project"
  registration_token = "glrt-abcdef1234567890"
}
