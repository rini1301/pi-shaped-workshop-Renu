variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "vm_name" {
  description = "Name of the VM"
  type        = string
}

variable "zone" {
  description = "GCP zone where VM will be created"
  type        = string
}

variable "machine_type" {
  description = "GCP VM machine type"
  type        = string
}
