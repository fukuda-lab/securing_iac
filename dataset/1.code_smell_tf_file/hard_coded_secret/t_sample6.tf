resource "buildkite_pipeline" "bazel-bazel" {
  name = "Bazel :bazel:"
  repository = "https://github.com/bazelbuild/bazel.git"
  steps = templatefile("pipeline.yml.tpl", { envs = { ENCRYPTED_BUILDKITE_ANALYTICS_TOKEN = "CiQA4DEB9rzbux2bc8Cn1JvZIggsEeEq0GCnh1xykjNdwcgN/YESQgAqwcvXqhZ5FkGlrfoeE5/7JLEqQ0vYCfVIKPI9JR0cuo8s3oYZTyxBjbHEhsnh31+LnK2K3GiLyc+vDP7EyNx0ww==" }, steps = { commands = ["curl -sS \"https://raw.githubusercontent.com/bazelbuild/continuous-integration/master/buildkite/bazelci.py?$(date +%s)\" -o bazelci.py", "python3.6 bazelci.py project_pipeline --file_config=.bazelci/postsubmit.yml --monitor_flaky_tests=true | tee /dev/tty | buildkite-agent pipeline upload"] } })
}
