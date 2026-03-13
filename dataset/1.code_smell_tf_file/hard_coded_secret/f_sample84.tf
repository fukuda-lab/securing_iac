resource "google_cloudiot_registry" "udms_reflect_cloudiot_registry" {
  name    = "UDMS-REFLECT"
  region  = var.gcp_region
  project = var.gcp_project_id
  event_notification_configs {
    pubsub_topic_name = "projects/${var.gcp_project_id}/topics/udmi_reflect"
    subfolder_matches = ""
  }
  mqtt_config = {
    mqtt_enabled_state = "MQTT_ENABLED"
  }
  http_config = {
    http_enabled_state = "HTTP_DISABLED"
  }
  log_level  = var.log_level
  depends_on = [google_pubsub_topic.udms_reflect_pubsub_event_topic]
}
