output "windows_worker_password_decrypted" {
  value = [
    for agent in aws_instance.windows_worker : rsadecrypt(agent.password_data, file(var.access_key))
  ]
}
