resource "buildkite_pipeline" "crubit" {
  name = "crubit"
  repository = "https://github.com/google/crubit.git"
  steps = templatefile("pipeline.yml.tpl", { envs = {}, steps = { commands = ["curl -sS \"https://raw.githubusercontent.com/bazelbuild/continuous-integration/master/buildkite/bazelci.py?$(date +%s)\" -o bazelci.py", "python3.6 bazelci.py project_pipeline | tee /dev/tty | buildkite-agent pipeline upload"] } })
  default_branch = "main"
  team = [{ access_level = "MANAGE_BUILD_AND_READ", slug = "googlers" }, { access_level = "BUILD_AND_READ", slug = "bazel" }]
  provider_settings {
    trigger_mode = "code"
    build_pull_requests = true
    skip_pull_request_builds_for_existing_commits = true
    build_pull_request_forks = true
    prefix_pull_request_fork_branch_names = true
    build_branches = true
    # TODO(hlopko): Fix this after investigating why "Buildkite has temporarily turned off commit status updates for this build pipeline."
    publish_commit_status = false
    separate_pull_request_statuses = true
  }
}
