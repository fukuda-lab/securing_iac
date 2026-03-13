variable "linux_password" {
  #default = "LiNuXuSeRP4Ss!"
  description = "Set a password for the default user"

  validation {
    condition     = length(var.linux_password) > 0
    error_message = "Please specify a password for the default user."
  }
}
