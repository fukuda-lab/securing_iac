module "sirf_gpu_uksouth" {
  source = "./modules/sirf-gpu-offset"
  vm_location = "uksouth"
  vm_id_offset = 0
  prebuilt_image_name = var.shared_image_name
  prebuilt_image_resource_group_name = var.shared_image_rg_name
  prebuilt_image_gallery_name = var.shared_image_gallery_name
  prefix = "${var.vm_prefix}-gpu"
  vm_total_no_machines = 1
  vm_jupyter_port = 9999
  vm_size = "Standard_NC6_Promo"
  vm_username = var.vm_username
  vm_password = var.vm_password
}
