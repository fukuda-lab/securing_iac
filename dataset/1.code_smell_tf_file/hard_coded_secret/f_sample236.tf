variable "gh_pat_secret_id" {
  description = "The name of the secret for GitHub Personal Access Token. Required for cloud build trigger (CI/CD)"
  default = "playground-github-pat-ci"
}
