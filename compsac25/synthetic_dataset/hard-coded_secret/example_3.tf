resource "aws_elasticsearch_domain" "logging" {
  domain_name           = "logging-cluster"
  elasticsearch_version = "7.10"

  advanced_security_options {
    enabled = true
    master_user_options {
      master_user_name     = "elastic"
      master_user_password = "ElasticPass456!"
    }
  }

  encrypt_at_rest {
    enabled = true
  }

  node_to_node_encryption {
    enabled = true
  }
}
