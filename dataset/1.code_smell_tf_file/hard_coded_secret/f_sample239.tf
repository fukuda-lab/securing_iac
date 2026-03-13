data "archive_file" "source_code" {
  type        = "zip"
  source_dir  = "../backend"
  output_path = "/tmp/backend.zip"
}
