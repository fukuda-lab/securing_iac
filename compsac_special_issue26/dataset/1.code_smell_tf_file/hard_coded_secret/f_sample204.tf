variable "cluster" {
  description = "Set of GKE cluster parameters."
  type        = map(any)

  default = {
    "name"                          = "test-cluster"
    "project"                       = "agones"
    "location"                      = "us-west1"
    "network"                       = "default"
    "subnetwork"                    = ""
    "releaseChannel"                = "REGULAR"
    "kubernetesVersion"             = "1.27"
    "deletionProtection"            = true
    "maintenanceExclusionStartTime" = null
    "maintenanceExclusionEndTime"   = null
  }
}
