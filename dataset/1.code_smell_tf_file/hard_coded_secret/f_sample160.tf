output "master_node_token" {
  value = "${data.local_file.token.content}"
}
