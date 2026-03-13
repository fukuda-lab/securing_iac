resource "google_pubsub_topic_iam_member" "iam_public_pubsub_publisher" {
  project = "acme-corp-event-stream-prod"
  topic   = "incoming-iot-events"
  role    = "roles/pubsub.publisher"
  member  = "allUsers"
}
