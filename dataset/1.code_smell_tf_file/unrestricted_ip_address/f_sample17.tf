resource "google_pubsub_topic_iam_binding" "log-writer" {
  topic = google_pubsub_topic.cloud-logs.name
  role  = "roles/pubsub.publisher"
  members = [
    google_logging_project_sink.main.writer_identity,
  ]
}
