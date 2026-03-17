provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaa..."
  user_ocid        = "ocid1.user.oc1..aaaaaaa..."
  fingerprint      = "f4:7b:1f:9a:1c:2d:3e:4f:5a:6b:7c:8d:9e:0a:1b:2c"
  private_key_path = "/home/user/.oci/oci_api_key.pem" // Path is okay, but key below is not
  private_key      = <<EOF
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEArvQw6v1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
wK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
wK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
wK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
wK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
wK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1QwK1Q
1Q==
-----END RSA PRIVATE KEY-----
EOF
  region           = "us-ashburn-1"
}
