data "template_file" "web_container" {
  count    = length(var.stages)
  template = file("./templates/web_container.json.tpl")

  vars = {
    stage             = var.stages[count.index]
    port              = var.container_port
    cpu               = var.container_cpu
    memory            = var.container_memory
    dara_endpoint     = var.dara_credentials[count.index].endpoint
    dara_username     = var.dara_credentials[count.index].username
    dara_password     = var.dara_credentials[count.index].password
    elasticsearch_uri = var.elasticsearch_uris[count.index]
    rabbitmq_uri      = var.rabbitmq_uris[count.index]
    mongodb_uri       = var.mongodb_uris[count.index]
    mongodb_ca_cert   = var.mongodb_ca_certs[count.index]
    email_hostname    = var.email_credentials[count.index].hostname
    email_password    = var.email_credentials[count.index].password
    email_username    = var.email_credentials[count.index].username
    site_token        = var.seo4ajax_tokens[count.index].site_token
  }
}
