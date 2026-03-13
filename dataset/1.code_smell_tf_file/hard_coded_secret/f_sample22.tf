resource "buildkite_pipeline" "bazel-bench-master-report" {
  name = "Bazel Bench Master Report"
  repository = "https://github.com/bazelbuild/bazel-bench.git"
  steps = templatefile("pipeline.yml.tpl", { envs = {}, steps = { commands = ["python3 -m pip install -r third_party/requirements.txt", "python3 report/generate_master_report.py --date=\"$(date --date yesterday +%Y-%m-%d)\"  --storage_bucket=perf.bazel.build --bigquery_table='bazel-public:bazel_bench.bazel_bench_daily' --upload_report=True", "wait", "gsutil cp gs://perf.bazel.build/all/\"$(date --date yesterday +%Y/%m/%d)\"/report.html gs://perf.bazel.build/all/report_latest.html"], retry = true } })
  description = "Generates the daily combined performance report."
  default_branch = "master"
  team = [{ access_level = "MANAGE_BUILD_AND_READ", slug = "bazel-bench" }]
  provider_settings {
    trigger_mode = "code"
    build_pull_requests = true
    skip_pull_request_builds_for_existing_commits = true
    prefix_pull_request_fork_branch_names = true
    publish_commit_status = true
  }
}
