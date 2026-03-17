resource "google_compute_instance" "h2ocluster_instances" {
  # Will use OS Login to the Workspace
  metadata = {
    nodes-count = var.h2o_cluster_instance_count
    nodes-prefix = "${var.h2o_cluster_instance_name_prefix}-${var.h2o_cluster_instance_user}-${var.h2o_cluster_instance_randstr}-cluster-node-"
    project-id = var.h2o_cluster_instance_project
    zone = var.h2o_cluster_instance_zone
    instance-group-name = "${var.h2o_cluster_instance_name_prefix}-${var.h2o_cluster_instance_user}-${var.h2o_cluster_instance_randstr}-cluster" 
    startup-complete = "FALSE"
    h2o-url = var.h2o_download_url
    sshKeys = "${var.h2o_cluster_instance_ssh_user}:${file(var.h2o_cluster_instance_ssh_pubkey_filepath)}"
  }
}
