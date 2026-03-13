resource "null_resource" "build_template" {
  triggers = {
    id = uuid()
  }
  depends_on = [null_resource.shadowjar]
  provisioner "local-exec" {
    command = <<EOF
      gcloud dataflow flex-template build \
        ${local.template_file_gcs_path} \
        --project=${var.project} \
        --image-gcr-path=${var.region}-docker.pkg.dev/${var.project}/${data.google_artifact_registry_repository.default.name}/${var.template_image_prefix} \
        --metadata-file=${local.beam_root}/.test-infra/pipelines/infrastructure/04.template/dataflow-to-bigquery/dataflow-template.json \
        --sdk-language=JAVA \
        --flex-template-base-image=JAVA11 \
        --jar=${local.beam_root}/.test-infra/pipelines/build/libs/beam-beam-test-infra-pipelines-latest.jar \
        --env=FLEX_TEMPLATE_JAVA_MAIN_CLASS=org.apache.beam.testinfra.pipelines.ReadDataflowApiWriteBigQuery \
        --network=${data.google_compute_network.default.name} \
        --subnetwork=regions/${var.region}/subnetworks/${data.google_compute_subnetwork.default.name} \
        --disable-public-ips \
        --service-account-email=${data.google_service_account.dataflow_worker.email} \
        --enable-streaming-engine
    EOF
  }
}
