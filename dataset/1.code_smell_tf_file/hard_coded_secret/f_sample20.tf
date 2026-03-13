resource "buildkite_pipeline" "bazel-arm64" {
  name = "Bazel (arm64)"
  repository = "https://github.com/bazelbuild/bazel.git"
  steps = file("bazel-arm64.yml")
  default_branch = "master"
  provider_settings {
    trigger_mode = "code"
    build_pull_requests = true
    skip_pull_request_builds_for_existing_commits = true
    prefix_pull_request_fork_branch_names = true
    build_branches = true
    publish_commit_status = true
  }
}
