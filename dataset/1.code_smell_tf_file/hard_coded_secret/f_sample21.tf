resource "buildkite_pipeline" "docgen-bazel" {
  name = "DocGen: Bazel"
  repository = "https://github.com/bazelbuild/bazel.git"
  steps = templatefile("pipeline.yml.tpl", { envs = {}, steps = { commands = ["curl -s \"https://raw.githubusercontent.com/bazelbuild/continuous-integration/master/pipelines/bazel-docgen.yml?$(date +%s)\" | tee /dev/tty | buildkite-agent pipeline upload --replace"] } })
  default_branch = "5.1-docs-fixes"
  branch_configuration = "5.1-docs-fixes"
  team = [{ access_level = "MANAGE_BUILD_AND_READ", slug = "bazel-docs" }]
  provider_settings {
    trigger_mode = "none"
    skip_pull_request_builds_for_existing_commits = true
    prefix_pull_request_fork_branch_names = true
    build_branches = true
  }
}
