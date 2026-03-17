variable "es_master_password" {
  description = "Master user password for Elasticsearch"
  type        = string
  default     = ""
}

resource "aws_elasticsearch_domain" "example" {
  domain_name = "example-domain"

  elasticsearch_version = "7.10"

  advanced_security_options {
    enabled = true
    master_user_options {
      master_user_name     = "admin"
      master_user_password = var.es_master_password
    }
  }
}
