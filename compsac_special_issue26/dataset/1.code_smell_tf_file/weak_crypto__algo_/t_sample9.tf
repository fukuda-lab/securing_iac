resource "local_file" "weak_checksum" {
  content  = sha1(var.content_to_track)
  filename = "${path.module}/.checksum.sha1"
}
