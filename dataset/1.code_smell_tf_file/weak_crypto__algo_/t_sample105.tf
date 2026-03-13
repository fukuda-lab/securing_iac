resource "local_file" "deployment_helper_script" {
  content = <<-EOT
    #!/bin/bash
    API_KEY_HASH="${md5(var.api_key_seed)}"
    echo "Deploying with key hash: $API_KEY_HASH"
    # ... deployment logic
  EOT
  filename = "${path.module}/deploy.sh"
}
