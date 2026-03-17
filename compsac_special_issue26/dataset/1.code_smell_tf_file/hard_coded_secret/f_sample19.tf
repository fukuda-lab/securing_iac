terraform {
  backend "gcs" {
    bucket  = "bazel-buildkite-tf-state"
    prefix  = "bazel-testing"
  }

  required_providers {
    buildkite = {
      source = "buildkite/buildkite"
      version = "0.5.0"
    }
  }
}
