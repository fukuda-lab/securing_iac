resource "null_resource" "ar-redirect" {

  provisioner "local-exec" {
    command = <<-EOT
      curl -H 'Authorization: Bearer ${nonsensitive(data.google_client_config.default.access_token)}' \
      -H 'Content-type: application/json' \
      https://artifactregistry.googleapis.com/v1/projects/${google_project.project.project_id}/projectSettings?updateMask=legacyRedirectionState \
      -X PATCH \
      --data '{
        "legacyRedirectionState": "REDIRECTION_FROM_GCR_IO_ENABLED"
      }'
    EOT
  }
  depends_on = [
    google_project_iam_binding.storageAdmin
  ]
}
