resource "google_workflows_workflow" "default" {
  depends_on      = [google_project_iam_member.default]
  name            = var.workflow_resource_name_base
  description     = "Consumes Dataflow Job Status Eventarc events and publishes to Pub/Sub"
  region          = var.region
  service_account = google_service_account.default.email
  source_contents = <<EOF
main:
  params: [event]
  steps:
    - init:
        assign:
          - project: '$${sys.get_env("GOOGLE_CLOUD_PROJECT_ID")}'
          - topic: "${google_pubsub_topic.workflow_topic.name}"
          - base64Msg: '$${base64.encode(json.encode(event))}'
    - publish_message_to_topic:
        call: googleapis.pubsub.v1.projects.topics.publish
        args:
          topic: $${"projects/" + project + "/topics/" + topic}
          body:
            messages:
              - data: '$${base64Msg}'
EOF
}
