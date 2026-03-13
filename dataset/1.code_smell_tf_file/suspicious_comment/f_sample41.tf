module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = [var.project_id]
  mode     = "authoritative"

    "roles/cloudsql.client" = [
      "serviceAccount:${google_service_account.gke_workload_staging.email}",    # this implies that staging service account also has access to production CloudSQL. Could be solved by putting the CloudSQL instances in separate projects,
      "serviceAccount:${google_service_account.gke_workload_production.email}", # this implies that production service account also has access to staging CloudSQL. Could be solved by putting the CloudSQL instances in separate projects.
    ],
    "roles/cloudsql.instanceUser" = [
      "serviceAccount:${google_service_account.gke_workload_staging.email}",    # this implies that staging service account also has access to production CloudSQL. Could be solved by putting the CloudSQL instances in separate projects,
      "serviceAccount:${google_service_account.gke_workload_production.email}", # this implies that production service account also has access to staging CloudSQL. Could be solved by putting the CloudSQL instances in separate projects.
    ]
}
