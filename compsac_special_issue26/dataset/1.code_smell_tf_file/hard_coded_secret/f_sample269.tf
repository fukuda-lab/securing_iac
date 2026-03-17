resource "google_vertex_ai_featurestore_entitytype" "entities" {
  depends_on   = [google_project_service.required]
  for_each     = var.featurestore.entity_types
  name         = each.key
  featurestore = google_vertex_ai_featurestore.default.id
  description  = each.value.description
  monitoring_config {

    categorical_threshold_config {
      value = 0.3
    }

    numerical_threshold_config {
      value = 0.3
    }
  }
}
