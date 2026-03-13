variable "kubernetes_versions" {
  description = "Create e2e test clusters with these k8s versions in these regions"
  type        = map(list(string))
  default     = {
    "1.27" = ["us-east1", "RAPID"]
    "1.28" = ["us-west1", "RAPID"]
    "1.29" = ["europe-west1", "RAPID"]
    // "1.30" = ["asia-east1", "RAPID"]
    //
    // Before merge: When adding Kubernetes version 1.{N}, first uncomment the line above, extending
    // the infrastructure to 4 versions temporarily. Come back to these instructions after the
    // update PR merges.
    //
    // After merge: After the Kubernetes update PR merges, and all active PRs are updated:
    //
    // * Move the 1.{N-3} line to the bottom and comment it out
    // * Change the (commented out) 1.{N-3} to 1.{N+1}
    // * You should now have 3 versions uncommented (versions 1.{N-2} .. 1.{N}),
    //   and 1.{N+1} commented out for the next update. The new, commented out 1.{N+1}
    //   should be using the region of the previous 1.{N-3} - this region will become
    //   unused.
    //
    // Rationale: We cycle the regions us-east1 -> us-west1 -> europe-west1 -> asia-east1 -> us-east1
    // as versions are added, using 4 regions so that the PR adding 1.{N} is in a unique region to
    // 1.{N-3} .. 1.{N-1}, meaning versions never need to share a region in CI.
  }
}
