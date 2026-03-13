resource "google_app_engine_standard_app_version" "version1" {
  version_id = "v1"
  service    = "default"
  runtime    = "python39"

  project = "gcpdiag-gaes1-vvdo0yn5"
}
