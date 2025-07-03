locals {
  workspace_name = terraform.workspace
}

module "vm" {
  source         = "./modules/vm"
  project_id     = var.project_id
  vm_name        = "terraform-vm-${local.workspace_name}"
  zone           = var.zone
  machine_type   = var.machine_type
}

module "storage" {
  source         = "./modules/storagefolders"
  project_id     = var.project_id
  bucket_name    = "gcp-terraform-bucket-1301-${local.workspace_name}"
  location       = var.bucket_location
}
