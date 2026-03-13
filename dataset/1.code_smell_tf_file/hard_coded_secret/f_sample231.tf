variable "roles" {
  description = "List of SSH related roles to assign"
  type        = list(string)
  default = [
    "roles/owner",
    "roles/compute.osLogin",
    "roles/compute.osAdminLogin",
    "roles/iam.serviceAccountUser",
    "roles/iap.tunnelResourceAccessor",
    "roles/compute.instanceAdmin.v1",
  ]
}
