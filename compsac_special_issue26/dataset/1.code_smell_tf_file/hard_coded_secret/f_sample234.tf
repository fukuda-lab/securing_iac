variable "tourofbeam_deploy_sa" {
  description = "The ID of the cloud build service account responsible for deploying the Tour of Beam"
  default = "tourofbeam-cloudbuild-deploy-sa"
}

variable "tourofbeam_ci_sa" {
  description = "The ID of the cloud build service account responsible for running Tour of Beam CI checks and scripts"
  default = "tourofbeam-cloudbuild-ci-sa"
}

variable "tourofbeam_cd_sa" {
  description = "The ID of the cloud build service account responsible for running Tour of Beam CD checks and scripts"
  default = "tourofbeam-cloudbuild-cd-sa"
}
