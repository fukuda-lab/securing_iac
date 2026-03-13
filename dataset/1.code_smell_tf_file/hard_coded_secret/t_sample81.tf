resource "google_cloudfunctions_function" "function" {
  name = "my-function"
  environment_variables = {
    SECRET_TOKEN = "b7f3c8e2a1d4f6b9e0c5a7d8f2e3b6c1a9e4d7f5b2c8a1e3f6d9b0c7a5e2f4"
  }
}
