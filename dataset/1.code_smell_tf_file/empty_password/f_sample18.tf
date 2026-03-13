variable "lambda_promtail_image" {
  type        = string
  description = "The ECR image URI to pull and use for lambda-promtail."
  default     = ""
}
