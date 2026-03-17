resource "google_cloudbuild_trigger" "playground_cd" {
  substitutions = {
    _DNS_NAME            = "fqdn.playground.zone"
    _DATASTORE_NAMESPACE = "playground-env"
    _MERGE_COMMIT        = "master"
    _ORIGIN              = "PG_EXAMPLES"
    _SDKS                = "java python go"
    _SUBDIRS             = "./learning/katas ./examples ./sdks"
    _BEAM_CONCURRENCY    = "4"
  }
}