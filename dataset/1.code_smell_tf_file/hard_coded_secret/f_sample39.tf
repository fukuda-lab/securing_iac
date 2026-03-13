resource "google_compute_instance" "cluster_instance" {
  for_each = var.cluster_nodes

  name         = "cluster-${replace(replace(each.value.node_group, ".", "-"), "_", "-")}-vm-${var.uuid}"
  machine_type = "${each.value.instance_type}"

  tags = ["cluster"]

  labels = {
    role       = "cluster"
    node_group = replace(each.value.node_group, ".", "-")
    deployment = var.global_tag != "" ? var.global_tag : null
  }

  boot_disk {
    initialize_params {
      size = "50"
      type = "pd-balanced"
      image = each.value.image
    }
  }

  attached_disk {
    source = google_compute_disk.cluster-disk[each.key].id
  }

  dynamic "scratch_disk" {
    for_each = range(each.value.local_nvmes)
    content {
      interface = "NVME"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.perf-sn.id
    access_config {
      network_tier = "PREMIUM"
    }
  }

  service_account {
    email  = "perftest-tools@couchbase-qe.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
