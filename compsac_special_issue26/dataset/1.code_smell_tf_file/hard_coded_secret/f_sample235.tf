resource "google_cloudbuild_trigger" "tourofbeam_ci_trigger" {
  name    = var.tourofbeam_ci_trigger_name

  substitutions = {
    _BEAM_VERSION             = "2.47.0"
  }

}
